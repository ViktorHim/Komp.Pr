#include "stringInput.h"
#include <string>

std::string stringInput()
{
	std::string str;
	std:: cout << "Input: ";
	std::getline(std::cin, str);
	return str;
}