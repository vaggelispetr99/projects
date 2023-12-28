#include <iostream>
#include <vector>

using std::cout;
using std::endl;
using std::string;
using std::vector;

template <typename T, typename Aggregate>
void compute_aggregation(const vector<T>& values, Aggregate aggregate) {
  for (const T& val : values) {
    aggregate(val);
  }
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

  int total = 0;

  compute_aggregation(int_vector, [&total] (const int& elem) {
    total = total + elem;
  });

  cout << endl << "---------Sum of values------------" <<  endl;
  cout << total << endl;
}
