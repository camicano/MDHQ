#include <stdio.h>

int factorial (int x) {
	int i, fact = 1;

	if (x < 0) 
		return -1;

  for (i = 1; i <= x; i++)
    fact = fact * i;

  return fact;
}
