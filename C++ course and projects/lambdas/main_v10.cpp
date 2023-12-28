#include <iostream>
#include <vector>

using std::cout;
using std::endl;
using std::string;
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
  vector<float> float_vector {12.3, 57.5, 90.6, 119.1, 456.22, 33.56, 91.11, 115.98, 220.33};

  cout << endl << "---------Original Values------------" <<  endl;
  print_values(float_vector);

  int multiplier = 100;
  int divisor = 3;

  vector<float> result_vector = apply_transform(float_vector, 
    [=] (const float& elem) {
      return elem * multiplier / divisor;
  });

  cout << endl << "--------- (x * 10) / 3 Values------------" <<  endl;
  print_values(result_vector);
}
