int anyEvenBit(int x) {
    int mask = (0x55 << 8) | 0x55;
    mask  = (mask << 16) | mask;
    return !!(x&mask);
}

int bitAnd(int x, int y) {
  return ~(~x | ~y);
}

int fitsShort(int x) {
  return !(((x << 16) >> 16) ^ x);
}

int implication(int x, int y) {
    return !(x^y) | y;
}

int oddBits(void) {
  int mask = (0x55 << 8) | 0x55;
  mask = (mask << 16) | mask;
  return ~mask;
}

int thirdBits(void) {
  int mask = (0x49 << 9) | 0x49;
  mask = (mask << 18) | mask;
  return mask;
}

int absVal(int x) {
  return ((x >> 31) + x) ^ (x >> 31);
}

int isPositive(int x) 
    int min = 1 << 31;
    int sum = x & min;
    return !(sum | !x);
}
