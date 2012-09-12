BUILD = build
TEST = test
LIB = lib
SRC = src

CPP = g++
CPPFLAGS = -Wall -Wextra

all: src test

src: $(SRC)/Stack.o
	cd $(SRC); $(MAKE)

test: $(SRC)/Stack.o
	cd $(TEST); $(MAKE)

clean:
	cd $(SRC); $(MAKE) clean
	cd $(TEST); $(MAKE) clean

