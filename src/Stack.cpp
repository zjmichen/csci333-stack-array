#include "Stack.h"
#include <iostream>

Stack::Stack(int initialSize) {
  maxSize = initialSize;
  theStack = new int[initialSize];
  top = 0;
}

Stack::~Stack() {
  delete[] theStack;
}

void Stack::push(int value) {
  //if theStack is full
  if (top == maxSize) {
	// create new stack twice as big
	int* newStack = new int[maxSize*2];
	// copy all elements to new stack
	for (int i = 0; i < maxSize; ++i) {
		newStack[i] = theStack[i];
	}

	// delete old stack
	delete theStack;
	// point old stack pointer to new stack
	theStack = newStack;
  
  }

  theStack[top] = value;
  top++;
}

int Stack::pop() {
  top--;
  return theStack[top];
}

int Stack::peek() {
  return theStack[top-1];
}

int Stack::size() {
  return top;
}
