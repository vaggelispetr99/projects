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

  bool operator() (const Department& x, const Department& y) const {
    return x.emp_count > y.emp_count;
  }
};


void print_set(const set<Department, std::greater<Department>>& dept_set) {
  for (auto& dept : dept_set) {
    cout << "Name:" << dept.name << " count: " << dept.emp_count << endl;
  }
}

int main()
{
  set<Department, std::greater<Department>> dept_set {
      Department("Sales", 20),
      Department("Operations", 35),
      Department("Engineering", 10), 
      Department("HR", 2)
  };

  cout << endl << "--------------Ordered set--------------" << endl;
  print_set(dept_set);
}
