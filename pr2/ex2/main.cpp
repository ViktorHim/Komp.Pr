#include <iostream>
#include "stringInput.h"
#include "stringOutput.h"

int main()
{
	setlocale(LC_ALL, "Russian");
	std::string s = stringInput();
	for(int i = 0; i < s.length(); i++)
	{
		if(s[i] >= -32 && s[i] <= -1)
		{
			s[i] -= 32;
		}
	}

	stringOutput(s);

	return 0;
}