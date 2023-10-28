#include <iostream>
#include <ctime>
#include "load.h"

#ifdef __linux__
#define LIL1 "lib/libmatrix.so"
#define LIL2 "lib/libarray.so"
#else
#define LIL1 "lib/libmatrix.dll"
#define LIL2 "lib/libarray.dll"
#endif

int main()
{
	srand(time(NULL));

	char c;

	std::cout<< "1. matrix\n2. array\n";

	do
	{
		std::cin >> c;
	} while (c != '1' && c!= '2');

	switch (c)
	{
		case '1':
		{
			LoadRun(LIL1);
		} break;
		case '2':
		{
			LoadRun(LIL2);
		} break;
	}

	return 0;
}