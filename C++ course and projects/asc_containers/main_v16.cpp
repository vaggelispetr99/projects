#include <iostream>
#include <algorithm>
#include <vector>

using std::cout;
using std::endl;
using std::string;
using std::vector;

bool starts_with_G(const string& city) {
  return city[0] == 'G';
}

int main()
{
  vector<string> cities {"Bangalore", "Seattle", "Greenwich", 
                         "New York City", "Palo Alto", "Hyderabad"};

  cout << "all_of starts with G: " << std::boolalpha
       << std::all_of(cities.begin(), cities.end(), starts_with_G) << endl;
  cout << "any_of starts with G: " << std::boolalpha
       << std::any_of(cities.begin(), cities.end(), starts_with_G) << endl;
  cout << "none_of starts with G: " << std::boolalpha
       << std::none_of(cities.begin(), cities.end(), starts_with_G) << endl;
}
