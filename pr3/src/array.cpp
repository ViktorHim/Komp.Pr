#include "array.h"
#include <iostream>
#include <ctime>
#include <iomanip>

int sumOfMax(int *array, int n)
{
	int sum = 0;
	int max = 0;

	for (int i = 0; i < n; i++)
	{
		if (array[i] < 0 && (array[i] > max || max == 0))
		{
			max = array[i];
			sum = max;
		}
		else if (array[i] == max)
		{
			sum += array[i];
		}
	}

	return sum;
}

void fillArray(int *array, int n)
{
	for (int i = 0; i < n; i++)
	{
		array[i] = rand() % 101 - 50;
	}
}

void printArray(int *array, int n, int row)
{
	for (int i = 0; i < n; i++)
	{
		std::cout << std::setw(3) <<array[i] << " ";
		if((i+1) % row == 0) std::cout << std::endl;
	}
}