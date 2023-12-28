#include <iostream>
#include <map>

using std::cout;
using std::endl;
using std::string;
using std::map;
using std::pair;

void print_map(const map<string, float>& map) {
  for (auto& entry : map) {
    cout << entry.first << ": " << entry.second << endl;
  }
}

int main()
{
  map<int, string> employees = {
      {1, "Noah"},
      {2, "Robert"},
      {3, "Mary"},
      {4, "Jennifer"}
  };

  cout << endl << "--------------Entries--------------" << endl;
  for (pair<int, string> entry : employees) {
    cout << entry.first << ": " << entry.second << endl;
  }

  cout << endl << "--------------Lookup by key--------------" << endl;
  cout << "Employee id: " << 1 << " name: " << employees.at(1) << endl;
  cout << "Employee id: " << 2 << " name: " << employees.at(2) << endl;
  cout << "Employee id: " << 3 << " name: " << employees.at(3) << endl;
  cout << "Employee id: " << 4 << " name: " << employees.at(4) << endl;

  map<string, string> capitals;

  capitals["Canada"] = "Ottawa";
  capitals["Greece"] = "Athens";
  capitals["India"] = "New Delhi";
  capitals["Malaysia"] = "Kuala Lumpur";

  cout << endl << "--------------Entries--------------" << endl;
  for (auto& entry : capitals) {
    cout << entry.first << ": " << entry.second << endl;
  }

  cout << endl << "--------------Lookup by key--------------" << endl;
  cout << "Capital of Canada is: " << capitals["Canada"] << endl;
  cout << "Capital of Greece is: " << capitals["Greece"] << endl;
  cout << "Capital of India is: " << capitals["India"] << endl;
  cout << "Capital of Malaysia is: " << capitals["Malaysia"] << endl;

  map<string, float> student_gpa = {
      {"Ava", 9.8},
      {"James", 7.3},
      {"Patricia", 5.8},
  };

  cout << endl << "--------------Original entries--------------" << endl;
  print_map(student_gpa);

  student_gpa.insert(std::make_pair("Oliver", 6.8));
  student_gpa.insert(pair<string, float>("Harry", 6.8));
  student_gpa.insert({"George", 4.9});

  cout << endl << "--------------Entries after insert--------------" << endl;
  print_map(student_gpa);

  student_gpa.erase("James");
  
  map<string, float>::iterator it = student_gpa.find("Harry");
  student_gpa.erase(it);

  cout << endl << "--------------Entries after erase--------------" << endl;
  print_map(student_gpa);

  student_gpa.insert({"Ava", 9.0});

  cout << endl << "--------------Entries (not updated)--------------" << endl;
  print_map(student_gpa);

  student_gpa["James"] = 6.0;

  it = student_gpa.find("Patricia");
  if (it != student_gpa.end()) {
    it->second = 6.0;
  }
  
  cout << endl << "--------------Entries updated--------------" << endl;
  print_map(student_gpa);
}
