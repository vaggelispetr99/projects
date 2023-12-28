#include <iostream>
#include <vector>

#include "function_templates.h"

using std::cout;
using std::endl;
using std::vector;

int main()
{
  vector<float> float_vector {10.1f, 20.2f, 30.3f, 40.4f, 50.5f, 60.6f};

  vector<float> filtered_floats = filter_in_range<20, 60>(float_vector);

  for (auto& element : filtered_floats) {
    cout << element << endl;
  }

  return 0;
}
