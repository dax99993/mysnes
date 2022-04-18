CC=g++
CC_FLAGS=-Wall -pedantic -g
CC_LIBS=
CC_HEADER=include/
CC_SOURCE=src/
CC_OBJ=obj/

SRC_FILES=$(wildcard $(CC_SOURCE)*.cpp)
OBJ_FILES=$(patsubst $(CC_SOURCE)%.cpp, $(CC_OBJ)%.o, $(SRC_FILES))

BIN=snes
TEST=./test_img/test_pic.jpg test_pic.qoi

all: $(CC_OBJ) $(BIN)
	#./$(BIN) $(TEST)

$(BIN): $(OBJ_FILES)
	$(CC) $(CC_FLAGS) $^ -I$(CC_HEADER) -o $@ $(CC_LIBS)

$(CC_OBJ)%.o: $(CC_SOURCE)%.cpp
	$(CC) $(CC_FLAGS) -c $^ -I$(CC_HEADER) -o $@

$(CC_OBJ):
	mkdir $@

clean:
	rm -rf $(BIN) $(CC_OBJ)
