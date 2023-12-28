#include <iostream>
#include <string>

using std::cout;
using std::endl;

void print_value(const double& num);
double& square_value(double& num);

int main()
{
  int int_var = 555;

  print_value(int_var);

  //double result = square_value(int_var);
  //cout << result << endl;

  return 0;
}

void print_value(const double& num) {
  cout << "--- Number is: " << num << "----" << endl;
}

double& square_value(double& num) {
  num = num * num;

  return num;
}




