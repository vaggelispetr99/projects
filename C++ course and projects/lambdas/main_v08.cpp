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
  vector<int> int_vector {12, 57, 90, 119, 456, 33, 91, 115, 220};

  cout << endl << "---------Original Values------------" <<  endl;
  print_values(int_vector);

  int multiplier = 10;

  vector<int> result_vector = apply_transform(int_vector, [multiplier] (const int& elem) {
    return elem * multiplier;
  });


  cout << endl << "---------Multiplied by 10 Values------------" <<  endl;
  print_values(result_vector);
}
