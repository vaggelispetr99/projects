#include <iostream>

using std::cout;
using std::endl;
using std::string;

double add(double first_num, double second_num);

double subtract(double first_num, double second_num);

int main()
{
  double (*compute_fn) (double, double);

  compute_fn = add;

  //double (*compute_fn) (double, double) {add}; // alternative for lines 13 and 15

  cout << "----------Addition-----------" << endl;
  cout << compute_fn(23.987, 65.398) << endl;

  compute_fn = subtract;

  cout << "----------Subtraction-----------" << endl;
  cout << compute_fn(23.987, 65.398) << endl;
}


double add(double first_num, double second_num) {
  return first_num + second_num;  
}

double subtract(double first_num, double second_num) {
  return first_num - second_num;
}
