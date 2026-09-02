#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

intptr_t sum_numbers(intptr_t n)
{
    intptr_t i = 1;
    intptr_t acc = 0;

    while (i <= n) {
        acc += i;
        i++;
    }

    return acc;
}

int main(int argc, char **argv)
{
    intptr_t n = strtoll(argv[1], NULL, 10);

    printf("%ld\n", (long)sum_numbers(n));

    return 0;
}