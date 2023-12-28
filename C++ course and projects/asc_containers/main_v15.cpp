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

struct StringLengthSmaller {

  bool operator()(const string& a, const string& b) const {
    return a.length() < b.length() ? true : false;
  }
} string_length_smaller;


int main()
{
  set<string> names_set {"Kelly Smith", 
                         "Gina Johnson", 
                         "Mason Capwell", 
                         "Eden de la Renta", 
                         "Peter P"};

  set<string>::iterator it_min = 
      std::min_element(names_set.begin(), names_set.end(), string_length_smaller);
  set<string>::iterator it_max = 
      std::max_element(names_set.begin(), names_set.end(), string_length_smaller);

  cout << "Minimum: " << *it_min << endl;
  cout << "Maximum: " << *it_max << endl;
}
