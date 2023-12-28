#include <iostream>
#include <vector>

using std::cout;
using std::endl;
using std::string;
using std::vector;

double add_10(double value) {
  return value + 10;
}

class MultiplyBy10 {

  public:
    double operator()(double value) {
      return value * 10;
    }
};

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

  vector<double> added_10 = apply_transform(double_vector, add_10);

  cout << endl << "---------Added 10------------" <<  endl;
  print_values(added_10);

  MultiplyBy10 multiply_by_10;
  vector<double> multiplied_by_10 = apply_transform(double_vector, multiply_by_10);

  cout << endl << "---------Multiplied by 10------------" <<  endl;
  print_values(multiplied_by_10);

  vector<double> divided_by_10 = apply_transform(double_vector, [] (double val) {return val / 10;});

  cout << endl << "---------Divided by 10------------" <<  endl;
  print_values(divided_by_10);
}
