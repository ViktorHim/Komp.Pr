#include "matrix.h"
#include <iostream>
#include <iomanip>

int sumOfMax(int **matrix, int n, int m)
{
	int sum = 0;
	int max = 0;

	for (int i = 0; i < n; i++)
	{
		for (int j = 0; j < m; j++)
		{
			if (matrix[i][j] < 0 && (matrix[i][j] > max || max == 0))
			{
				max = matrix[i][j];
				sum = max;
			}
			else if (matrix[i][j] == max)
			{
				sum += matrix[i][j];
			}
		}
	}

	return sum;
}

void fillArray(int **array, int n, int m)
{
	for (int i = 0; i < n; i++)
	{
		for (int j = 0; j < m; j++)
		{
			array[i][j] = rand() % 101 - 50;
		}
		
	}
	
}

void printArray(int **array, int n, int m)
{
	for (int i = 0; i < n; i++)
	{
		for (int j = 0; j < m; j++)
		{
			std::cout <<std::setw(3)<< array[i][j] << " ";
		}
		std::cout << std::endl;
	}
}