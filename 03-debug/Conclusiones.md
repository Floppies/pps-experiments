# Comparacion Haskell vs C a nivel de LLVM IR

## Pregunta Experimental
¿Cómo difiere la representación intermedia LLVM generada para una misma operación implementada en Haskell y en C, y qué revelan esas diferencias sobre el modelo de ejecución y la gestión de memoria de ambos lenguajes?

## Suma numerica recursiva

**Nota:** Uso intptr_t porque conceptualmente se aproxima mejor a Int: en una arquitectura de 64 bits ambos serán normalmente enteros del tamaño de una palabra.

## Comparacion de llvm de Haskell en distintas optimizaciones

| Aspecto                         | Haskell `-O0`                   | Haskell `-O2`               |
| ------------------------------- | ------------------------------- | --------------------------- |
| Suma                            | llamada genérica de `Num`       | `add i64`                   |
| Comparación                     | operación de `Ord`              | `icmp sgt i64`              |
| `i` y `acc`                     | valores bajo maquinaria Haskell | enteros primitivos          |
| Closure/thunk en cada iteración | presente                        | eliminado                   |
| Loop directo                    | muy oculto por RTS              | claramente visible          |
| Boxing                          | frecuente / maquinaria genérica | principalmente en fronteras |
| RTS                             | muy presente                    | sigue presente              |
| GC checks                       | presentes                       | siguen presentes            |
| Calling convention              | `ghccc`                         | `ghccc`                     |

En -O0 la diferencia es conceptual

source
  ↓
variables primitivas
  ↓
loop

Haskell
source
  ↓
closures
  ↓
diccionarios de tipos
  ↓
evaluación lazy / aplicaciones
  ↓
RTS
  ↓
operaciones

Esto muestra muy bien que el costo de la abstracción funcional sí existe en la representación intermedia cuando GHC todavía no optimizó el programa.

En -O2 se puede ver algo mucho mas parecido a C, logro eliminar gran parte del costo de lazy evaluation dentro del loop, pero no eliminar el RTS de Haskell.

        Haskell -O0

closure → thunk → Num/Ord → RTS → operación
                ↓
             muchas
          estructuras


        Haskell -O2

RTS ──────────────┐
                  ↓
             ┌─────────┐
             │ i64 acc │
             │ i64 i   │
             └─────────┘
                  │
              add / icmp
                  │
                  ↓
            boxing final

## Analisis de los LLVM de C
En -O2, CLANG elimina por completo el bucle. LLVM reconoció:

$$ 1+2+3+\ldots+n $$

y lo reemplazó por una expresión cerrada.

Tambien hace inline en 'main'. Ni siquiera llama a sum_numbers. Clang copia directamente el cálculo matemático dentro de main,

Es decir que tenemos:

C -O0

main
 ↓
call sum_numbers
       ↓
      loop


C -O2

main
 ↓
fórmula matemática
 ↓
printf

La función sum_numbers continúa existiendo porque podría ser llamada externamente, pero dentro de main fue inlined.

## Comparacion final

| Característica                | C `-O0` | Haskell `-O0`     | C `-O2`          | Haskell `-O2`                       |
| ----------------------------- | ------- | ----------------- | ---------------- | ----------------------------------- |
| Enteros primitivos            | Sí      | Parcialmente      | Sí               | Sí en loop                          |
| `add i64` directo             | Sí      | No principalmente | Sí               | Sí                                  |
| Loop explícito                | Sí      | Oculto por RTS    | **No**           | Sí                                  |
| `alloca/load/store`           | Sí      | Muchísimos        | Prácticamente no | Sí                                  |
| Diccionarios de tipos         | No      | Sí                | No               | Eliminados del loop                 |
| Closures                      | No      | Sí                | No               | Algunas permanecen                  |
| Thunks / update frames        | No      | Sí                | No               | Fuera del camino crítico            |
| Heap administrado             | No      | Sí                | No               | Sí                                  |
| Garbage collector             | No      | Sí                | No               | Sí                                  |
| Stack check RTS               | No      | Sí                | No               | Sí                                  |
| Boxing de `Int`               | No      | Sí                | No               | Principalmente en fronteras         |
| Inline                        | No      | Poco              | **Sí**           | También hay simplificación/inlining |
| Eliminación completa del loop | No      | No                | **Sí**           | No                                  |

## Conclusion

La representación LLVM generada por Clang contiene información y supuestos semánticos diferentes de la generada por GHC. En particular, las operaciones enteras generadas para C incluyen atributos como nsw, lo que habilita transformaciones algebraicas que no aparecen en el IR generado para las operaciones sobre Int de Haskell.
Esto es especialmente importante porque las semánticas originales de ambos lenguajes no son idénticas frente al overflow.

Este experimento demuestra que:

                   GHC -O0
                      │
       closures + thunks + diccionarios
                      │
                      │ optimización
                      ▼
                   GHC -O2
                      │
           i64 + add + icmp + loop
                      │
             sigue existiendo RTS


                  Clang -O0
                      │
             i64 + loop directo
                      │
                      │ optimización
                      ▼
                  Clang -O2
                      │
                sin loop
                      │
            fórmula matemática

Y eso nos permite separar dos tipos de optimización:
Primero, GHC realiza optimizaciones necesarias para superar el costo introducido por el modelo funcional lazy:
'''
eliminación de abstracciones → unboxing → especialización → loop sobre primitivos.
'''
Después LLVM puede hacer optimizaciones convencionales sobre ese código. C empieza mucho más cerca de esa segunda etapa.
