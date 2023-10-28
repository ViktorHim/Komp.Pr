SRC = ./src/
OBJ = ./obj/
NAME_1 = first
NAME_2 = second
NAME_3 = third
IO = IOArray
FUNC = arrayFunctions
CC = g++
all: task1 task2
task1: $(SRC)$(NAME_1).cpp
	$(CC) -E -o $(OBJ)$(NAME_1).i $(SRC)$(NAME_1).cpp
	$(CC) -S -o $(OBJ)$(NAME_1).s $(SRC)$(NAME_1).cpp
	$(CC) -S -O1 -o $(OBJ)$(NAME_1)_optim1.s $(SRC)$(NAME_1).cpp
	$(CC) -S -O2 -o $(OBJ)$(NAME_1)_optim2.s $(SRC)$(NAME_1).cpp
	$(CC) -S -O3 -o $(OBJ)$(NAME_1)_optim3.s $(SRC)$(NAME_1).cpp
	$(CC) -c -o $(OBJ)$(NAME_1).o $(SRC)$(NAME_1).cpp
	$(CC) -o $(OBJ)$(NAME_1) $(OBJ)$(NAME_1).o

task2: $(SRC)$(NAME_2).cpp $(SRC)$(NAME_3).cpp
	$(CC) -c -o $(OBJ)$(NAME_2).o $(SRC)$(NAME_2).cpp
	$(CC) -c -o $(OBJ)$(NAME_3).o $(SRC)$(NAME_3).cpp
	$(CC) -c -o $(OBJ)$(FUNC).o $(SRC)$(FUNC).cpp
	$(CC) -c -o $(OBJ)$(IO).o $(SRC)$(IO).cpp
	$(CC) -o $(OBJ)$(NAME_2) $(OBJ)$(NAME_2).o $(OBJ)$(IO).o $(OBJ)$(FUNC).o
	$(CC) -o $(OBJ)$(NAME_3) $(OBJ)$(NAME_3).o $(OBJ)$(IO).o $(OBJ)$(FUNC).o
	ar crs $(OBJ)arlib.a $(OBJ)$(FUNC).o $(OBJ)$(IO).o
	$(CC) -o $(OBJ)$(NAME_2)_lib $(OBJ)$(NAME_2).o -L. $(OBJ)arlib.a
clean:
	rm -r $(OBJ)*