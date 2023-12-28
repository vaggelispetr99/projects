#include <iostream>
#include <map>
#include <unordered_map>

using std::cout;
using std::endl;
using std::string;
using std::map;
using std::unordered_map;
using std::pair;

void print_map(const map<string, float>& map) {
  for (auto& entry : map) {
    cout << entry.first << ": " << entry.second << endl;
  }
}

void print_map(const unordered_map<string, float>& map) {
  for (auto& entry : map) {
    cout << entry.first << ": " << entry.second << endl;
  }
}

int main()
{
  map<string, float> students = {
      {"Ava", 9.8},
      {"Oliver", 6.5},
      {"Patricia", 5.8},
      {"James", 7.3},
  };

  unordered_map<string, float> uo_students = {
      {"Ava", 9.8},
      {"Oliver", 6.5},
      {"Patricia", 5.8},
      {"James", 7.3},
  };

  cout << endl << "--------------Ordered map entries--------------" << endl;
  print_map(students);

  cout << endl << "--------------Unordered map entries--------------" << endl;
  print_map(uo_students);
}
