#include <iostream>
#include <vector>

#include "function_templates.h"

using std::cout;
using std::endl;
using std::vector;

int main()
{
  vector<int> int_vector {10, 20, 30, 40, 50, 60};
  vector<float> float_vector {10.1f, 20.2f, 30.3f, 40.4f, 50.5f, 60.6f};

  int sum_1 = sum_values(int_vector);
  float sum_2 = sum_values(float_vector);

  cout << "Sum 1 = " << sum_1 << endl;
  cout << "Sum 2 = " << sum_2 << endl;

  return 0;
}
