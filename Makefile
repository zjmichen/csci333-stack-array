BUILD = build
TEST = test
LIB = lib
SRC = src

CPP = g++
CPPFLAGS = -Wall -Wextra

all:
	cd $(SRC); make

clean:
	rm -f $(BUILD)/*
	rm -f $(SRC)/*.o
	$(MAKE) all

