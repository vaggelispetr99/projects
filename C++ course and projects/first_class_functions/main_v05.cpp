#include <iostream>

#include "compute_functions.h"

using std::cout;
using std::cin;
using std::endl;
using std::string;

auto* get_compute_function(char op) {

  double (*compute_fn) (double, double) = nullptr;

  switch (op)
  {
    case '+':
      compute_fn = add;
      break;
    case '-':
      compute_fn = subtract;
      break;
    case '*':
      compute_fn = multiply;
      break;
    case '/':
      compute_fn = divide;
      break;
    default:
      break;
  }

  return compute_fn;
}


int main()
{
  double first_num, second_num;
  char op;

  cout << "Please enter number and operation in this format 1.23 + 2.67: ";
  cin >> first_num >> op >> second_num;

  double (*compute_fn) (double, double) = get_compute_function(op);

  if (compute_fn != nullptr) {
    cout << compute_fn(first_num, second_num) << endl;
  } else {
    cout << "Unknown operation specified" << endl;
  }
}

