# N=10000
| Métrica | `foldl` lazy | `foldl'` strict | Diferencia aprox. |
| --- | ---: | ---: | ---: |
| Memoria total alocada | 2.7 MB | 1.6 MB | 1.69× |
| Bytes copiados por GC | 4.8 KB | 4.8 KB | casi igual |
| **Maximum residency** | **46.0 KB** | **46.0 KB** | **casi igual** |
| Memoria total en uso | 6 MiB | 6 MiB | casi igual |
| Tiempo MUT | 0.001 s | 0.001 s | casi igual |
| Tiempo GC | 0.000 s | 0.000 s | — |
| Tiempo total | 0.002 s | 0.001 s | 2.00× |
| Productivity | 77.1% | 67.2% | — |

#N=1000000
| Métrica | `foldl` lazy | `foldl'` strict | Diferencia aprox. |
| --- | ---: | ---: | ---: |
| Memoria total alocada | 266.3 MB | 152.1 MB | 1.75× |
| Bytes copiados por GC | 403.4 MB | 18.3 KB | ~21.998× |
| **Maximum residency** | **112.7 MB** | **61.6 KB** | **~1.831×** |
| Memoria total en uso | 218 MiB | 6 MiB | 36× |
| Tiempo MUT | 0.071 s | 0.026 s | 2.73× |
| Tiempo GC | 0.287 s | 0.000 s | ∞ |
| Tiempo total | 0.358 s | 0.026 s | 14× |
| Productivity | 19.8% | 97.8% | — |