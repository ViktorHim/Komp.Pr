#include <iostream>
using namespace std;

template <class T>
void input(T * array, int size)
{
	cout << "array: ";
	for(int i = 0; i < size; i++)
	{
		cin >> array[i];
	}
	cout << endl;
}

template <class T>
void output(T * array, int size)
{
	for(int i = 0; i < size; i++)
	{
		cout << array[i] << " ";
	}
	cout << endl;
}