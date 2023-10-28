#include <iostream>

int main()
{
    int M = 0, N = 0;
    std::cout << "Input: " << std::endl;
		std::cin >> M >> N;
    int nod, a=M, b=N;
    while(b > 0 && a > 0)
    {
        int tmp=a; a=b; b=tmp%b;
    }
    nod=a;
    if(nod>0)
    {
        M/=nod;
        N/=nod;
    }
    std::cout <<"Resault: " << M  << "/" << N;
    return 0;
}