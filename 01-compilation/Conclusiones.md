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





