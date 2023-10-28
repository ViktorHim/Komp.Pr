using namespace std;
#include <iostream>
template <class T>
bool isIncreasing(T * array, int size)
{
	for(int i = 0; i < size - 1; i++)
	{
		if(array[i] >= array[i+1])
		{
			return false;
		}
	}
	return true;
}

template <class T>
int deleteRepetitions(T * array, T * newArray, int size)
{

    int n = size;
	for (int m = 0; m < size; m++) 
	{
        for (int i = m+1; i < size; i++) 
				{
            if (array[m] == array[i]) 
						{
                for (int k = i; k < size - 1; k++) 
								{
                  array[k] = array[k + 1];
                }
                size--;
				i--;
            }
        }
    }

	// newArray = new T[size];
	for(int i = 0; i < size; i++)
	{
		newArray[i] = array[i];
	}
	
	return size;
}
