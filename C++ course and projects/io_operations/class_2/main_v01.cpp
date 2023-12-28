#include <iostream>
#include <fstream>
#include <vector>

#include "Department.h"

using std::cout;
using std::endl;
using std::string;
using std::vector;
using std::ofstream;

int main()
{
  vector<Department> dept_vector;

  dept_vector.push_back(Department {"Engineering", 200, 2500000.23});
  dept_vector.push_back(Department {"Customer Service", 89, 1220000.99});
  dept_vector.push_back(Department {"Sales", 20, 1222000.45});
  dept_vector.push_back(Department {"Operations", 20, 899000.76});

  for (auto& dept : dept_vector) {
    cout << dept;
  }

  cout << "*****Console writing completed*****" << endl;

  return 0;
}
