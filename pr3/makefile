OBJ = ./obj/
LIB = ./lib/
SRC = ./src/
CC = g++
TARGET = $(OBJ)app

TARGET : $(SRC)*.cpp
	$(CC) -c $(SRC)array.cpp -fPIC -o $(OBJ)array.o
	$(CC) -c $(SRC)arrayFunc.cpp -fPIC -o $(OBJ)arrayFunc.o
	$(CC) -c $(SRC)matrix.cpp -fPIC -o $(OBJ)matrix.o
	$(CC) -c $(SRC)matrixFunc.cpp -fPIC -o $(OBJ)matrixFunc.o
	$(CC) -c $(SRC)load.cpp -fPIC -o $(OBJ)load.o
	$(CC) -c $(SRC)main.cpp -fPIC -o $(OBJ)main.o
	$(CC) -shared $(OBJ)array.o $(OBJ)arrayFunc.o -o $(LIB)libarray.so
	$(CC) -shared $(OBJ)matrix.o $(OBJ)matrixFunc.o -o $(LIB)libmatrix.so
	$(CC) -shared $(OBJ)load.o -o $(LIB)libload.so
	$(CC) $(OBJ)main.o -ldl -L$(LIB) -lload -o $(TARGET)
clean:
	rm -r $(OBJ)* $(LIB)*