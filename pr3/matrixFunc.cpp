#include "matrix.h"
#include <iostream>

#define N 7
#define M 8

int main()
{
	int **a = new int*[N];

	for (int i = 0; i < N; i++)
	{
		a[i] = new int[M];
	}
	
	fillArray(a, N, M);
	printArray(a, N, M);
	std::cout << std::endl
			  << "The sum of max negative number: " << sumOfMax(a, N, M);

	for (int i = 0; i < N; i++)
	{
		delete a[i];
	}
	delete a;
}