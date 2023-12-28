#include <iostream>
#include <fstream>
#include <vector>

#include "Department.h"

using std::ifstream;
using std::ofstream;
using std::string;
using std::cout;
using std::endl;
using std::vector;

int main()
{
  ofstream output_file_stream;

  output_file_stream.open("departments.dat", std::ios::out | std::ios::binary);

  if (!output_file_stream) {
    cout << "The file departments.dat could not be opened for writing" << endl;
    return 1;
  }

  vector<Department> dept_vector;

  dept_vector.push_back(Department {"Engineering", 200, 2500000.23});
  dept_vector.push_back(Department {"Customer Service", 89, 1220000.99});
  dept_vector.push_back(Department {"Sales", 20, 1222000.45});
  dept_vector.push_back(Department {"Operations", 20, 899000.76});

  for (auto& dept : dept_vector) {
    output_file_stream.write(reinterpret_cast<char*>(&dept), sizeof(dept));
  }

  output_file_stream.close();

  cout << "*****File writing completed*****" << endl;

  ifstream input_file_stream;

  input_file_stream.open("departments.dat", std::ios::in | std::ios::binary);
  Department department;
  for (int i = 0; i < 4; i++) {
    

    input_file_stream.read(reinterpret_cast<char *>(&department), sizeof(Department));

    cout << department.get_name() << ": "
          << department.get_num_employees() << " "
          << department.get_salary_budget() << endl;
          cout << "hello" << endl;
  }

  input_file_stream.close();

  cout << "*****File reading completed*****" << endl;

  return 0;
}
