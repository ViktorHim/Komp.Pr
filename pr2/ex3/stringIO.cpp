#include "stringIO.h"
#include <string>

std::string stringInput()
{
	std::string str;
	std:: cout << "Input: ";
	std::getline(std::cin, str);
	return str;
}

void stringOutput(std::string s)
{
	std::cout << "Output: " << s;
}