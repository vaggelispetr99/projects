#include <iostream>
#include <vector>

#include "function_objects_1.h"

using std::cout;
using std::cin;
using std::endl;
using std::vector;

template <typename T, typename Transform>
vector<T> apply_transform(const vector<T>& values, Transform transform) {

  vector<T> transformed_values;

  for (const T& val : values) {
    transformed_values.push_back(transform(val));
  }

  return transformed_values;
}

template <typename T>
void print_values(vector<T> values) {
  for (const T& val : values) {
    cout << val << " ";
  }
  cout << endl;
}


int main()
{
  vector<double> double_vector {65.34, 76.9, 45.31, 99.99, 345.55};

  cout << endl << "---------Original Values------------" <<  endl;
  print_values(double_vector);

  MultiplyBy multiply_by_10(10);
  vector<double> multiplied_values_10 = apply_transform(double_vector, multiply_by_10);  

  cout << endl << "---------Multiplied by 10------------" <<  endl;
  print_values(multiplied_values_10);

  DivideBy divide_by_5(5);
  vector<double> divided_values_5 = apply_transform(double_vector, divide_by_5);  

  cout << endl << "---------Divided by 5------------" <<  endl;
  print_values(divided_values_5);
}

