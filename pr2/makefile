CC = g++
OBJ = ./obj/
SRC_1 = ./ex1/
SRC_2 = ./ex2/
SRC_3 = ./ex3/

all: task1 task2 task3
task1: $(SRC_1)main.cpp
	$(CC) -g -o $(OBJ)main1 $(SRC_1)main.cpp
task2: $(SRC_2)main.cpp
	$(CC) -g -o $(OBJ)main2 $(SRC_2)main.cpp $(SRC_2)stringInput.cpp $(SRC_2)stringOutput.cpp
task3: $(SRC_3)main.cpp
	$(CC) -g -c -o $(OBJ)stringIO.o $(SRC_3)stringIO.cpp
	ar crs $(OBJ)libstr.a $(OBJ)stringIO.o
	$(CC) $(SRC_3)main.cpp -g -L$(OBJ) -lstr -o $(OBJ)main3
clean:
	rm -r $(OBJ)*