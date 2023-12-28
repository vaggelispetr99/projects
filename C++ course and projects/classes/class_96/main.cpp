#include <iostream>

#include "Container.h"

using std::cout;
using std::endl;
using std::string;

int main()
{
  Container<string> string_container {"Some string"};
  Container<float> float_container {123.756f};
  Container<int> int_container {14876};

  cout << string_container << endl;
  cout << float_container << endl;
  cout << int_container << endl;
}
