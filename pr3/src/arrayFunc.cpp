#include "array.h"
#include <iostream>

#define N 76
#define ROW 19

int main()
{
	int *a = new int[N];
	fillArray(a, N);
	printArray(a, N, ROW);
	std::cout << std::endl
			  << "The sum of max negative number: " << sumOfMax(a, N);
	delete a;
}