#include <iostream>
using namespace std;

int main()
{
	int n;
	double mul = 1;

	do
	{
		cout << "Input n:";
		cin >> n;
	} while (n <= 0);
	
	for(int i = 0; i < n; i++)
	{
		double numerator = i % 2 == 0 ? i + 2 : i + 1;
		double denominator = i % 2 == 0 ? i + 1 : i + 2;
		//cout << numerator <<" " << denominator << endl;
		mul*= numerator / denominator;
	}
	cout << "product: " << mul << endl;

	return 0;
}