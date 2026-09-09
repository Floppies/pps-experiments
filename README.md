# Functional Language Memory Management Experiments

This repository contains the experimental work developed as part of a research project on **memory management and runtime behavior in functional languages**, with a particular focus on Haskell and GHC.

The research studies how evaluation strategy, compiler optimizations, intermediate representations, and runtime mechanisms affect memory allocation and execution. The experiments analyze different stages of the GHC compilation pipeline and compare optimized and non-optimized programs, including comparisons with C through LLVM IR.

## Repository Structure

```text
.
├── 01-compilation/
├── 02-memory/
├── 03-debug/
├── docs/
└── README.md
```

### `01-compilation/`

Analysis of the GHC compilation pipeline using **Core and STG**.

The experiment compares code generated with different optimization levels, focusing on transformations such as strictness analysis, worker/wrapper transformations, and unboxing.

### `02-memory/`

Memory usage experiments comparing different evaluation strategies.

It includes programs, runtime statistics, and heap profiling data used to study allocations, garbage collection, and maximum residency.

### `03-debug/`

Comparison between **Haskell and C using LLVM IR**.

The experiment analyzes:

* LLVM intermediate representation
* compiler optimizations
* generated instructions
* stack and heap usage
* runtime overhead
* differences between `-O0` and `-O2`

It also examines how GHC can transform lazy, boxed computations into loops operating on primitive values.

### `docs/`

Contains reports, methodology, results, conclusions, and other documentation related to the experiments and the theoretical background of the research.

## Tools

The experiments were mainly developed using:

* GHC
* Haskell
* C
* LLVM / Clang
* GHC Runtime System profiling tools
* Heap profiling and runtime statistics

## Research Goal

The main goal of this work is to understand how functional language abstractions are translated into lower-level representations and how compiler optimizations can reduce allocations and runtime overhead while preserving the semantics of lazy evaluation.
