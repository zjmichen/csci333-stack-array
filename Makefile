BUILD = build
TEST = test
LIB = lib
SRC = src

CPP = g++
CPPFLAGS = -Wall -Wextra

all: clean test

test: $(SRC)/stack_tester.cpp Stack.o
	$(CPP) $(CPPFLAGS) -o $(BUILD)/test $(SRC)/stack_tester.cpp $(BUILD)/Stack.o

Stack.o: $(SRC)/Stack.h $(SRC)/Stack.cpp
	$(CPP) $(CPPFLAGS) -c $(SRC)/Stack.cpp -o $(BUILD)/Stack.o

clean:
	rm -f Stack.o
	rm -f *~
	rm -f test
