#include <iostream>
#include "stringIO.h"

bool isLetter(char);

int main()
{
	setlocale(LC_ALL, "Russian");

	std::string s = stringInput();

	int left = 0;
	int right = s.size() - 1;
	bool isPol = true;

	while(left <= right && isPol)
	{
		if(isLetter(s[left]) && isLetter(s[right]))
		{
			if(s[left] == s[right] || (abs(s[left] - s[right]) == 32))
			{
				left++;
				right--;
			}
			else
			{
				isPol = false;
			}
		}
		else
		{
				while(!isLetter(s[left]) && left <= right)
				{
					left++;
				}
				while(!isLetter(s[right]) && right >= left)
				{
					right--;
				}
		}
	}

	stringOutput(s);
	isPol ? std::cout << std::endl << "���������!!!" : std::cout << std::endl <<"�� ���������!!!";
	
	return 0;
}

bool isLetter(char x)
{
	return (x >= 'A' && x <='Z') || (x >= 'a' && x <='z') || (x >= 'А' && x <='Я') || (x >= 'а' && x <='я');
}