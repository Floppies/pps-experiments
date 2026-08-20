# Analisis del Core

Al compilar con -O0, la representación Core de sumList conserva operaciones relativamente abstractas, incluyendo el uso del diccionario Num Int y valores boxed de tipo Int. Con -O2, GHC aplica transformaciones de worker/wrapper y análisis de strictness, generando un worker $wsumList :: [Int] -> Int#. El cálculo recursivo se realiza entonces sobre enteros unboxed mediante la primitiva +#, y el resultado es boxed sólo al retornar por la interfaz original. Esto evidencia cómo las optimizaciones del compilador pueden eliminar representaciones intermedias y reducir potenciales allocations. Sin embargo, la lista de entrada continúa construyéndose mediante constructores (:), por lo que no todas las allocations son eliminadas.

## Comparacion completa O0 y O2

| Aspecto             | `-O0`          | `-O2`                            |
| ------------------- | -------------- | -------------------------------- |
| `sumList`           | `[Int] -> Int` | wrapper + worker                 |
| Worker              | ❌              | `$wsumList`                      |
| Resultado recursivo | `Int`          | `Int#`                           |
| Caso `0`            | `I# 0#`        | `0#`                             |
| Suma                | `+`            | `+#`                             |
| `Num Int`           | `$fNumInt`     | eliminado                        |
| Elemento de lista   | `Int`          | se desempaqueta a `Int#`         |
| `[1..10]`           | `enumFromTo`   | `main_go3` especializado         |
| `$fEnumInt`         | presente       | eliminado                        |
| Lista intermedia    | presente       | **todavía presente**             |
| `Show Int`          | `$fShowInt`    | mayormente especializado/inlined |
| `IO`                | abstracto      | aparece `State# RealWorld`       |

# Analisis de STG

Despues de analizar stg O0 observamos lo siguiente:

1. sumList se representa como una closure de función que recibe la lista.
2. El patrón sobre la lista continúa expresado mediante case.
3. La llamada recursiva sumList xs se transforma en una closure/thunk actualizable que captura xs.
4. Tanto sumList [1..10] como la generación de [1..10] aparecen también como computaciones suspendidas.

STG hace explícita la representación operacional de la evaluación lazy: expresiones no evaluadas pueden transformarse en closures que almacenan tanto el código a ejecutar como las variables libres necesarias para ejecutarlo posteriormente.

## Comparacion entre O0 y O2

O0
──────────────────────────────────────────

: x xs ->
    let {
        sat =
            {xs} \u [] sumList xs;
    }
    in + $fNumInt x sat

    O2
──────────────────────────────────────────

: x xs ->
    case x of {
        I# x1 ->

            evaluar $wsumList xs
                    ↓
                   ww

            +# x1 ww
    }

                        -O0                   -O2

recursión        thunk                  directa/demandada

resultado        Int                    Int#

suma             +                      +#

Num Int          $fNumInt               eliminado

boxing           intermedio             reducido

worker           no                     $wsumList

thunk recursivo  sí                     no

Para la lista
                        -O0             -O2

[1..10] genérico       enumFromTo      main_go3

Enum Int               $fEnumInt       eliminado

cola lazy              thunk           thunk

nodo de lista          (:)             (:)

elemento                Int             Int

abstracción de typeclasses
        ↓
puede desaparecer

estructura de datos [Int]
        ↓
sigue existiendo

Podemos dividir las allocations potenciales en dos grupos.

Allocations que -O2 parece haber eliminado/reducido:

- thunk de sumList xs en cada paso recursivo;
- boxes asociados a resultados numéricos recursivos;
- infraestructura asociada a las llamadas genéricas a Num Int;
- algunas abstracciones de Enum y Show.

Allocations que siguen existiendo:

- nodos (:) de la lista;
- Int boxed almacenados como elementos de [Int];
- thunk que produce la cola de la lista;
- otros thunks relacionados con main, generación del String, etc.

Eso nos lleva a una idea bastante importante:

optimizacion **distinto** cero allocations

sino:

optimizacion → eliminacion de algunas allocations evitables

# Conclusiones generales

                 HASKELL
                    │
                    ▼
                  CORE
                    │
       ┌────────────┴────────────┐
       │                         │
      O0                        O2
       │                         │
typeclasses              worker/wrapper
boxed Int                Int#
generic +                +#
       │                         │
       ▼                         ▼
                  STG
       │                         │
thunk sumList xs      evaluación directa
closures              menos closures
       │                         │
       └────────────┬────────────┘
                    │
                    ▼
       diferente presión potencial
              sobre el heap

La evaluación lazy no implica que todas las expresiones terminen necesariamente convertidas en thunks en el código optimizado. En -O0, la llamada recursiva sumList xs aparece explícitamente como una closure actualizable. Con -O2, el análisis de demanda y worker/wrapper permiten ejecutar la recursión mediante $wsumList :: [Int] -> Int#, eliminando ese thunk y realizando la suma mediante la operación primitiva +#. Sin embargo, la lista de entrada continúa siendo producida de forma lazy y su cola sigue representándose mediante un thunk. Por lo tanto, GHC elimina computaciones suspendidas que puede evitar, pero conserva las necesarias para mantener la semántica/productividad lazy del programa.



