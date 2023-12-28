#include <iostream>

using std::cout;
using std::cin;
using std::endl;
using std::string;

double add(double first_num, double second_num);

double subtract(double first_num, double second_num);

double multiply(double first_num, double second_num);

double divide(double first_num, double second_num);

int main()
{
  double (*compute_fn) (double, double) = nullptr;

  double first_num, second_num;
  char op;

  cout << "Please enter number and operation in this format 1.23 + 2.67: ";
  cin >> first_num >> op >> second_num;

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

  if (compute_fn != nullptr) {
    cout << compute_fn(first_num, second_num) << endl;
  } else {
    cout << "Unknown operation specified" << endl;
  }
}


double add(double first_num, double second_num) {
  cout << "Performing addition..." << endl;
  return first_num + second_num;  
}

double subtract(double first_num, double second_num) {
  cout << "Performing subtraction..." << endl;
  return first_num - second_num;
}

double multiply(double first_num, double second_num) {
  cout << "Performing multiplication..." << endl;
  return first_num * second_num;
}

double divide(double first_num, double second_num) {
  cout << "Performing division..." << endl;
  return first_num / second_num;
}
