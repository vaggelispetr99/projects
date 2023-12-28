#include <iostream>
#include <map>
#include <set>

using std::cout;
using std::endl;
using std::string;
using std::set;
using std::map;

struct Department {
  string name;
  int emp_count;

  Department(string name, int emp_count) : 
      name(name), emp_count(emp_count) {
  }

  bool operator<(const Department& other) const {
    return emp_count < other.emp_count;
  }

  bool operator>(const Department& other) const {
    return emp_count > other.emp_count;
  }
};


void print_map(const map<Department, string, std::less<Department>>& map) {
  for (auto& entry : map) {
    cout << entry.first.name << " count: " << entry.first.emp_count 
         << " head: " << entry.second << endl;
  }
}

int main()
{
  map<Department, string, std::less<Department>> dept_head_map = {
      {Department("Sales", 20), "Calvin Gundry"},
      {Department("Operations", 35), "Banner Boles"},
      {Department("Engineering", 25), "Sue Perkins"}, 
      {Department("HR", 3), "Nina Tang"}
  };

  cout << endl << "--------------Ordered map--------------" << endl;
  print_map(dept_head_map);
}


