CPP = g++
CPPFLAGS = -Wall -Wextra

all: clean test

test: stack_tester.cpp Stack.o
	$(CPP) $(CPPFLAGS) -o test stack_tester.cpp Stack.o

Stack.o: Stack.h Stack.cpp
	$(CPP) $(CPPFLAGS) -c Stack.cpp

clean:
	rm -f Stack.o
	rm -f *~
	rm -f test