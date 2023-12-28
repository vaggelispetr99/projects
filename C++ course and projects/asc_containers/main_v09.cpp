#include <iostream>
#include <map>
#include <unordered_map>

using std::cout;
using std::endl;
using std::string;
using std::multimap;
using std::unordered_multimap;

void print_map(const multimap<string, string>& map) {
  for (auto& entry : map) {
    cout << entry.first << ": " << entry.second << endl;
  }
}

void print_map(const unordered_multimap<string, string>& map) {
  for (auto& entry : map) {
    cout << entry.first << ": " << entry.second << endl;
  }
}

int main()
{
  multimap<string, string> dept_employee_map = {
      {"Sales", "Calvin Gundry"},
      {"Sales", "James Patterson"},
      {"Engineering", "Sue Perkins"}, 
      {"Engineering", "Nina Tang"},
      {"HR", "Banner Boles"},
      {"Operations", "Elsa Boomer"}
  };

  unordered_multimap<string, string> uo_dept_employee_map = {
      {"Sales", "Calvin Gundry"},
      {"Sales", "James Patterson"},
      {"Engineering", "Sue Perkins"}, 
      {"Engineering", "Nina Tang"},
      {"HR", "Banner Boles"},
      {"Operations", "Elsa Boomer"}
  };

  cout << endl << "--------------Employees ordered--------------" << endl;
  print_map(dept_employee_map);

  cout << endl << "--------------Employees unordered--------------" << endl;
  print_map(uo_dept_employee_map);
}
