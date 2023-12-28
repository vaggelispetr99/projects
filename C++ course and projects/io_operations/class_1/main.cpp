#include <iostream>
#include <fstream>
#include <vector>

#include "Department.h"

using std::cout;
using std::endl;
using std::string;
using std::vector;
using std::ifstream;
using std::ofstream;

int main()
{
  ofstream output_file_stream{"departments.txt"};

  if (!output_file_stream) {
    cout << "The file departments.txt could not be opened for writing" << endl;
    return 1;
  }

  vector<Department> dept_vector;

  dept_vector.push_back(Department {"Engineering", 200, 2500000.23});
  dept_vector.push_back(Department {"Customer Service", 89, 1220000.99});
  dept_vector.push_back(Department {"Sales", 20, 1222000.45});
  dept_vector.push_back(Department {"Operations", 20, 899000.76});

  for (auto& dept : dept_vector) {
    output_file_stream << dept;
  }

  cout << "*****Console writing completed*****" << endl;

  ifstream input_file_stream {"departments.txt"};

  if (!input_file_stream) {
    cout << "The file departments.txt could not be opened for reading" << endl;
    return 1;
  }

  vector<Department> dept_vector_2;

  while (true) {
    Department dept;

    input_file_stream >> dept;
    if (input_file_stream.eof()) {
      break;
    }

    dept_vector_2.push_back(dept);
  }

  cout << "*****File reading completed*****" << endl;

  for (auto& dept : dept_vector_2) {
    cout << dept;
  }

  return 0;
}
