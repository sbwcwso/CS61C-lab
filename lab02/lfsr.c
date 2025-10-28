#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include "lfsr.h"


// Return the nth bit of x.
// Assume 0 <= n <= 15
uint16_t get_bit(uint16_t x, unsigned n) {
    return (x >> n) & 1;
}

void lfsr_calculate(uint16_t *reg) {
    uint16_t msb;
    msb = get_bit(*reg, 0) ^ get_bit(*reg, 2) ^ get_bit(*reg, 3) ^ get_bit(*reg, 5);
    *reg = (msb << 15) | (*reg >> 1);
}

