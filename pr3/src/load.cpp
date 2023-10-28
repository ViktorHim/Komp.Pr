#include "load.h"


#ifdef __linux__
#include "dlfcn.h"
void LoadRun(const char *const s)
{
	void *lib;
	void (*fun)(void);
	lib = dlopen(s, RTLD_LAZY); // загрузка библиотеки в память;
	if (!lib)
	{
		std::cout << "cannot open library\n";
		return;
	}
	fun = (void (*)(void))dlsym(lib, "main");
	// получение указателя на функцию из библиотеки;
	if (fun == NULL)
	{
		std::cout << "cannot load function main\n";
	}
	else
	{
		fun();
	}
	dlclose(lib); // выгрузка библиотеки;
}
#else
#include "windows.h"
void LoadRun(const char *const s)
{
	void *lib;
	void (*fun)(void);
	lib = LoadLibrary(s) // загрузка библиотеки в память;
			if (!lib)
	{
		printf("cannot open library '%s'\n", s);
		return;
	}
	fun = (void (*)(void))GetProcAddress((HINSTANCE)lib, "main");
	// получение указателя на функцию из библиотеки;
	if (fun == NULL)
	{
		printf("cannot load function main\n");
	}
	else
	{
		fun();
	}
	FreeLibrary((HINSTANCE)lib) // выгрузка библиотеки;
}
#endif
