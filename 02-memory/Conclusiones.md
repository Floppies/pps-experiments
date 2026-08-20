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

| Métrica               | `foldl` lazy | `foldl'` strict | Diferencia aprox. |
| --------------------- | -----------: | --------------: | ----------------: |
| Memoria total alocada |     266.3 MB |        152.1 MB |             1.75× |
| Bytes copiados por GC |     403.4 MB |           18 KB |          ~22.000× |
| **Maximum residency** | **112.7 MB** |     **61.5 KB** |       **~1.830×** |
| Memoria total en uso  |      218 MiB |           6 MiB |               36× |
| Tiempo MUT            |      0.073 s |         0.063 s |        casi igual |
| Tiempo GC             |      0.292 s |         0.001 s |             ~292× |
| Tiempo total          |      0.366 s |         0.065 s |              5.6× |
| Productivity          |        19.9% |           97.7% |                 — |

**Nota:** La parte más importante no es que foldl aloque 1.75 veces más memoria. Es esto:

foldl mantiene aproximadamente 112 MB de datos vivos, mientras que foldl' mantiene solamente unos 62 KB.

Eso es justamente la diferencia entre allocation y residency que queríamos demostrar.

### Analisis sin optimizaciones
Con n = 1.000.000 y sin optimizaciones, la versión basada en foldl presentó una residencia máxima aproximadamente 1830 veces superior a la versión basada en foldl'. Aunque la diferencia en memoria total alocada fue de solamente 1.75 veces, la versión lazy mantuvo una gran cantidad de estructuras intermedias vivas, provocando aproximadamente 403 MB de copia durante garbage collection y reduciendo la productividad del runtime al 19.9%. En contraste, foldl' mantuvo una residencia cercana a 62 KB y una productividad del 97.7%.

Haciendo diferentes mediciones con diferentes N, descubrimos que la diferencia de la residencia crece con el tama;o de la entrada.

             LISTA
               │
               │ lazy
               ▼
      ┌───────────────────┐
      │ producción bajo   │
      │ demanda           │
      └─────────┬─────────┘
                │
                ▼
             BUENO
           streaming


          ACUMULADOR
               │
               │ lazy
               ▼
      ┌───────────────────┐
      │ cadena creciente  │
      │ de thunks         │
      └─────────┬─────────┘
                │
                ▼
             MALO
         alta residency

foldl' conserva de la lista producida lazy pero hace que el acumulador sea strict.

## Mediciones con optimizacion

Para N=1000000

| Métrica       |    lazy `-O2` |  strict `-O2` |
| ------------- | ------------: | ------------: |
| Allocated     |       58584 B |       58872 B |
| Copied GC     |        3272 B |        3272 B |
| Max residency |       44328 B |       44328 B |
| Total memory  |         6 MiB |         6 MiB |
| GC time       |       0.000 s |       0.000 s |
| Productivity  |         60.9% |         57.8% |

lo cual lo lleva a una comparacion muy grande
| Métrica           |    lazy `-O0` |   lazy `-O2` |  strict `-O0` | strict `-O2` |
| ----------------- | ------------: | -----------: | ------------: | -----------: |
| Allocated         | 266,298,200 B | **58,584 B** | 152,102,744 B | **58,872 B** |
| Copied GC         | 403,360,536 B |  **3,272 B** |      18,336 B |  **3,272 B** |
| Maximum residency | 112,687,136 B | **44,328 B** |      61,552 B | **44,328 B** |
| Total memory      |       218 MiB |    **6 MiB** |         6 MiB |    **6 MiB** |

### Analisis con optimizaciones
Con -O2, entra en juego el demand/strictness analysis. GHC intenta determinar qué argumentos necesariamente serán evaluados. Si descubre que algo siempre será demandado, puede utilizar una convención más estricta y además aplicar worker/wrapper para pasar valores unboxed. Tanto -fstrictness como -fworker-wrapper están habilitados por -O

GHC documenta precisamente que el análisis de demanda puede permitir call-by-value y argumentos unboxed, y worker/wrapper explota esa información.

Pero hay una distinción importante:

Todavía no podemos afirmar que foldl fue literalmente convertido en foldl'.

Los números sugieren que el código generado termina teniendo un comportamiento equivalente, pero puede haber ocurrido mediante varias transformaciones combinadas:

- strictness/demand analysis;
- worker/wrapper;
- unboxing de Int;
- inlining;
- especialización;
- posiblemente eliminación/fusión de estructuras intermedias.

Para saber exactamente cuál ocurrió, necesitamos mirar Core.

**Nota:** Los graficos ya son tan peque;os para estas muestras que no se utilizan

## Analisis del core despues de la optimizacion

La semántica lazy del programa fuente no determina por sí sola el comportamiento de memoria del ejecutable. El análisis de demanda y las transformaciones del compilador pueden detectar estricticidad, eliminar estructuras intermedias y transformar radicalmente el perfil de memoria sin modificar la semántica observable del programa.

Vemos que:

En el código fuente teníamos conceptualmente:

sumLazy n =
    foldl (+) 0 [1..n]


sumStrict n =
    foldl' (+) 0 [1..n]

Pero en Core ya no aparece:

foldl
foldl'
(:)
[]
[1..n]

en el cuerpo principal del cálculo.

En su lugar aparece esto:

sumStrict
  = \ n_aLB ->
      case n_aLB of { I# y_a1FY ->
      ...
          joinrec {
            $wgo3_s2Uh x_s2Ub ww_s2Ue
              = case ==# x_s2Ub y_a1FY of {
                  __DEFAULT ->
                    jump $wgo3_s2Uh
                      (+# x_s2Ub 1#)
                      (+# ww_s2Ue x_s2Ub);


                  1# ->
                    I# (+# ww_s2Ue x_s2Ub)
                };
          } in
          jump $wgo3_s2Uh 1# 0#

Eso ya no se parece mucho a un fold sobre una lista.

Se parece básicamente a:

go i acc
    | i == n    = acc + i
    | otherwise = go (i + 1) (acc + i)

Es decir:

i = 1
acc = 0


acc = acc + i
i   = i + 1


acc = acc + i
i   = i + 1


...

GHC convirtió todo en un loop estricto.

Todo fue cambiado a un loop estricto muy simple que sereia algo que hariamos en C

int x   = 1;
int acc = 0;

while (x != n) {
    acc = acc + x;
    x   = x + 1;
}

return acc + x;

y utiliza joinrec y jump para obtener una semantica parecida a 
loop:
    ...
    goto loop
que a
crear closure
llamar función
crear closure
llamar función

Ademas hace que las funciones de suma sean casi las mismas

sumLazy                       sumStrict
   │                              │
   │ foldl                        │ foldl'
   │                              │
   ▼                              ▼
lazy accumulator             strict accumulator


                 -O2
                  │
                  ▼

             OPTIMIZED CORE

               sumStrict
                   ▲
                   │
            sumLazy = sumStrict
                   │
                   ▼

      loop sobre Int# + acumulador Int#

Entonces ahora podemos explicar los resultados completos

Con -O0:

foldl
 │
 ▼
acumulador lazy
 │
 ▼
cadena de THUNK
 │
 ├── I#
 ├── I#
 ├── I#
 │
 ▼
~112 MB maximum residency
 │
 ▼
403 MB copied by GC
 │
 ▼
19.9% productivity

Mientras:

foldl'
 │
 ▼
acumulador forzado
 │
 ▼
~62 KB residency

Pero con -O2:

foldl (+) 0 [1..n]       foldl' (+) 0 [1..n]
         │                         │
         └──────────┬──────────────┘
                    ▼
            análisis/optimización
                    │
          ┌─────────┴─────────┐
          │                   │
       unboxing             fusión
          │                   │
          └─────────┬─────────┘
                    ▼
             loop con Int#
                    │
                    ▼
             ~44 KB residency

Y el Core literalmente nos da:

sumLazy = sumStrict

Por ende podemos decir que con -O2, GHC logra generar una implementación equivalente para sumLazy y sumStrict. El Core optimizado muestra explícitamente sumLazy = sumStrict y reemplaza la composición entre el fold y la enumeración [1..n] por un único bucle recursivo sobre valores Int#. El acumulador es actualizado mediante la primitiva estricta +#, evitando tanto la cadena de thunks observada sin optimización como el boxing de los valores intermedios. Además, la lista intermedia desaparece del loop optimizado.



