#include <iostream>
#include <algorithm>
#include <vector>
#include <set>
#include <map>

using std::cout;
using std::endl;
using std::string;
using std::vector;
using std::set;
using std::map;

bool smaller_string_length(const string& a, const string& b) {
  return a.length() < b.length() ? true : false;
}

int main()
{
  set<string> names_set {"Kelly Smith", 
                         "Gina Johnson", 
                         "Mason Capwell", 
                         "Eden de la Renta", 
                         "Peter P"};

  set<string>::iterator it_min = 
      std::min_element(names_set.begin(), names_set.end(), smaller_string_length);
  set<string>::iterator it_max = 
      std::max_element(names_set.begin(), names_set.end(), smaller_string_length);

  cout << "Minimum: " << *it_min << endl;
  cout << "Maximum: " << *it_max << endl;
}
