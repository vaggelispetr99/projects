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


int main()
{
  vector<float> float_vector {11.01, 34.29, 98.82, 55.09, 2.33, 100.56, 67.39};

  vector<float>::iterator it_min = std::min_element(float_vector.begin(), float_vector.end());
  vector<float>::iterator it_max = std::max_element(float_vector.begin(), float_vector.end());

  cout << "Minimum: " << *it_min << endl;
  cout << "Maximum: " << *it_max << endl;

  set<string> names_set {"Kelly Smith", 
                         "Gina Johnson", 
                         "Mason Capwell", 
                         "Eden de la Renta", 
                         "Peter P"};

  set<string>::iterator it_min = std::min_element(names_set.begin(), names_set.end());
  set<string>::iterator it_max = std::max_element(names_set.begin(), names_set.end());

  cout << "Minimum: " << *it_min << endl;
  cout << "Maximum: " << *it_max << endl;
}

