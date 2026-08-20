#!/usr/bin/env python3
"""Compara las estadisticas RTS de fold-exp en modos lazy y strict."""

from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path


BYTE_PATTERNS = {
    "allocated": r"([\d,]+) bytes allocated in the heap",
    "copied": r"([\d,]+) bytes copied during GC",
    "residency": r"([\d,]+) bytes maximum residency",
}


def run_fold(executable: Path, mode: str, n: int) -> str:
    command = [str(executable), mode, str(n), "+RTS", "-s", "-RTS"]
    try:
        result = subprocess.run(
            command,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            check=True,
        )
    except FileNotFoundError as error:
        raise RuntimeError(f"No se encontro el ejecutable: {executable}") from error
    except subprocess.CalledProcessError as error:
        detail = (error.stderr or error.stdout).strip()
        raise RuntimeError(
            f"Fallo {' '.join(command)} (codigo {error.returncode}):\n{detail}"
        ) from error

    # GHC emite las estadisticas RTS por stderr.
    return result.stderr + "\n" + result.stdout


def first_match(pattern: str, text: str, label: str) -> str:
    match = re.search(pattern, text, flags=re.MULTILINE | re.IGNORECASE)
    if not match:
        raise RuntimeError(f"No se pudo leer '{label}' de la salida RTS")
    return match.group(1)


def parse_stats(text: str) -> dict[str, float]:
    stats: dict[str, float] = {}
    for name, pattern in BYTE_PATTERNS.items():
        stats[name] = float(first_match(pattern, text, name).replace(",", ""))

    stats["memory_in_use"] = float(
        first_match(r"([\d.]+) MiB total memory in use", text, "memoria en uso")
    )
    for name, rts_label in (("mut", "MUT"), ("gc", "GC"), ("total", "Total")):
        stats[name] = float(
            first_match(
                rf"^\s*{rts_label}\s+time\s+([\d.]+)s", text, f"tiempo {rts_label}"
            )
        )
    stats["productivity"] = float(
        first_match(r"Productivity\s+([\d.]+)% of total user", text, "productividad")
    )
    return stats


def format_bytes(value: float) -> str:
    if value >= 1_000_000:
        return f"{value / 1_000_000:.1f} MB"
    if value >= 1_000:
        return f"{value / 1_000:.1f} KB"
    return f"{value:.0f} B"


def format_ratio(lazy: float, strict: float) -> str:
    if strict == 0:
        return "∞" if lazy else "—"
    ratio = lazy / strict
    if 0.85 <= ratio <= 1.15:
        return "casi igual"
    if ratio >= 100:
        rounded = round(ratio)
        return f"~{rounded:,}×".replace(",", ".")
    if ratio >= 10:
        return f"{ratio:.0f}×"
    return f"{ratio:.2f}×".rstrip("0").rstrip(".")


def make_table(lazy: dict[str, float], strict: dict[str, float]) -> str:
    rows = [
        ("Memoria total alocada", "allocated", format_bytes),
        ("Bytes copiados por GC", "copied", format_bytes),
        ("**Maximum residency**", "residency", format_bytes),
        ("Memoria total en uso", "memory_in_use", lambda x: f"{x:g} MiB"),
        ("Tiempo MUT", "mut", lambda x: f"{x:.3f} s"),
        ("Tiempo GC", "gc", lambda x: f"{x:.3f} s"),
        ("Tiempo total", "total", lambda x: f"{x:.3f} s"),
        ("Productivity", "productivity", lambda x: f"{x:.1f}%"),
    ]

    table = [
        "| Métrica | `foldl` lazy | `foldl'` strict | Diferencia aprox. |",
        "| --- | ---: | ---: | ---: |",
    ]
    for label, key, formatter in rows:
        lazy_value = formatter(lazy[key])
        strict_value = formatter(strict[key])
        difference = "—" if key == "productivity" else format_ratio(lazy[key], strict[key])
        if key == "residency":
            lazy_value = f"**{lazy_value}**"
            strict_value = f"**{strict_value}**"
            difference = f"**{difference}**"
        table.append(f"| {label} | {lazy_value} | {strict_value} | {difference} |")
    return "\n".join(table)


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Ejecuta fold-exp lazy/strict y compara sus estadisticas RTS."
    )
    parser.add_argument("N", type=int, help="cantidad de elementos procesados")
    parser.add_argument(
        "--executable",
        type=Path,
        default=Path(__file__).resolve().with_name("fold-exp"),
        help="ruta a fold-exp (por defecto: junto a este script)",
    )
    args = parser.parse_args()
    if args.N < 1:
        parser.error("N debe ser un entero positivo")

    try:
        lazy = parse_stats(run_fold(args.executable.resolve(), "lazy", args.N))
        strict = parse_stats(run_fold(args.executable.resolve(), "strict", args.N))
    except RuntimeError as error:
        print(f"Error: {error}", file=sys.stderr)
        return 1

    print(make_table(lazy, strict))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
