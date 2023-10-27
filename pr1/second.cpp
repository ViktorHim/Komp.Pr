#include <iostream>
#include "arrayLib.h"
using namespace std;
#define N 8

int main()
{
	int * array = new int[N];
	int * onceAr = new int[N];
	input(array, N);
	cout << "before: ";output(array, N);
	int size = deleteRepetitions(array, onceAr, N);
	cout << "after: ";output(onceAr, size);
}