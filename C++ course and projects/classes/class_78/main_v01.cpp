#include <iostream>
#include <string>
#include <vector>

#include "function_templates.h"

using std::cout;
using std::endl;
using std::string;
using std::vector;

int main()
{
  vector<int> int_vector {10, 20, 30, 40};
  vector<long> long_vector {1000l, 2000l};

  vector<long> merged_vector = merge_vectors<long>(int_vector, long_vector);

  for (long& el : merged_vector) {
    cout << el << endl;
  }

  vector<double> double_vector {10.1, 20.2, 30.3, 40.4};
  //vector<long> long_vector {1000l, 2000l};

  vector<double> merged_vector_1 = merge_vectors<double>(double_vector, long_vector);

  for (double& el : merged_vector_1) {
    cout << el << endl;
  }

  vector<double> merged_vector_2 = merge_vectors<double, double>(double_vector, long_vector);
  for (double& el : merged_vector_2) {
    cout << el << endl;
  }

  merged_vector_2 = merge_vectors<double, double, long>(double_vector, long_vector);
  for (double& el : merged_vector_2) {
    cout << el << endl;
  }

  cout << "Sum of 10.2 and 1209 = " << sum_of<float>(10.2, 1209) << endl;
  cout << "Difference of 1235 and 1209 = " << difference_of<int>(1235, 1209) << endl;

  return 0;
}
