#include "Stack.h"

Stack::Stack(int initialSize) {
  theStack = new int[initialSize];
  top = 0;
}

Stack::~Stack() {

}

void Stack::push(int value) {
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
