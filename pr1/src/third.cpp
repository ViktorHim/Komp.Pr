#include <iostream>
#include "arrayLib.h"
using namespace std;
#define N 8

int main()
{
	int array[N];
	input(array, N);
	output(array, N);
	if(isIncreasing(array, N))
	{
		cout << "increasing" << endl;
	}
	else
	{
		cout << "not increasing" << endl;
	}
	
}