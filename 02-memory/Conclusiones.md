# foldl vs foldl'
1. Pregunta experimental

Podés formularla así:

¿Cómo afecta la evaluación estricta del acumulador al uso de memoria de una reducción sobre una lista grande en Haskell?

La hipótesis sería:

foldl construirá una cadena creciente de thunks antes de producir el resultado, mientras que foldl' forzará el acumulador en cada iteración, reduciendo considerablemente la memoria retenida.

Es importante distinguir:

Allocation: cuánta memoria se creó durante toda la ejecución.
Residency: cuánta memoria permanece viva simultáneamente.
GC: cuánto trabajo tiene que hacer el recolector.
Heap profile: qué clases de objetos permanecen en el heap.

Un programa puede allocar mucho pero tener baja residency.

**Nota**: tener ambas implementaciones de la suma en el mismo ejecutable iguala todas als condiciones

## Mediciones sin optimizaciones del RTS

| Métrica             | Lazy           | Strict        |
| ------------------- | -------------: | ------------: |
| Total allocated     | 161318408 bytes| 88059176 bytes|
| Maximum residency   |  49559432 bytes|    44328 bytes|
| Total memory in use |       101 MiB  |        6 MiB  |
| Memory copied in GC | 199807872 bytes|    14152 bytes|
| GC time             |     0.187 s    |    0.001 s    |
| MUT time            |     0.044 s    |    0.027 s    |
| Total time          |     0.232 s    |    0.028 s    |
| Productivity        |      19.1 %    |     95.1 %    |

**Nota**: Estas mediciones fueron hechas con el mismo argumento. Para grandes valores, la implementacion lazy empieza a fallar primero. Estas metricas son solo un ejemplo de las multiples mediciones hechas.

