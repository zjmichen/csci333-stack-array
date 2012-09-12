BUILD = ../build
TEST = ../test
LIB = ../lib
SRC = ../src
GOOGLE_TEST = $(LIB)/gtest-1.6.0
GTEST_MAINA = $(GOOGLE_TEST)/make/gtest_main.a

GTEST_INCLUDES = -I$(GOOGLE_TEST) -I$(GOOGLE_TEST)/include

CPP = g++
CPPFLAGS = -Wall -Wextra

stack: Stack.cpp $(SRC)/Stack.o $(GTEST_MAINA)
	$(CPP) $(CFLAGS) $(GTEST_INCLUDES) -o stack $^

$(GTEST_MAINA):
	cd $(GOOGLE_TEST)/make; make

clean:
	rm -f stack
	cd $(GOOGLE_TEST)/make; $(MAKE) clean


