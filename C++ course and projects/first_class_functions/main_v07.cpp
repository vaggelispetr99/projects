#include <iostream>

#include "compute_functions.h"

using std::cout;
using std::cin;
using std::endl;
using std::string;

using ArithmeticFn = double (*) (double, double);

ArithmeticFn get_compute_function(char op) {

  switch (op)
  {
    case '+':
      return add;
    case '-':
      return subtract;
    case '*':
      return multiply;
    case '/':
      return divide;
  }

  return nullptr;
}


int main()
{
  double first_num, second_num;
  char op;

  cout << "Please enter number and operation in this format 1.23 + 2.67: ";
  cin >> first_num >> op >> second_num;

  ArithmeticFn compute_fn = get_compute_function(op);

  if (compute_fn != nullptr) {
    cout << compute_fn(first_num, second_num) << endl;
  } else {
    cout << "Unknown operation specified" << endl;
  }
}

