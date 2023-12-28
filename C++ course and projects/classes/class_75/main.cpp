#include <iostream>
#include <string>
#include <vector>

#include "function_templates.h"

using std::cout;
using std::endl;
using std::string;
using std::vector;

int main()
{
  cout << "Smaller of 10.11 and 23.72 is: " << smaller(10.11, 23.72) << endl;

  string first = "Heidi";
  string second = "Carlos";

  cout << "Smaller of Heidi and Carlos is: " << smaller(first, second) << endl;

  cout << "-----------------Before swap" << endl;
  cout << "first: " << first << endl;
  cout << "second: " << second << endl;
  swap(first, second);
  cout << endl << "-----------------After swap" << endl;
  cout << "first: " << first << endl;
  cout << "second: " << second << endl;

  decorative_display(123);

  string heidi {"Heidi"};
  string carlos {"Carlos"};
  string erica {"Erica"};

  vector<string> names = create_vector(heidi, carlos, erica);
  print_elements(names);
}

