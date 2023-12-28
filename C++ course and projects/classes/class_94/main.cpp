#include <iostream>
#include <string>

#include "Container.h"

using std::cout;
using std::endl;
using std::string;

int main()
{
     Container<int, string> int_string_container {3, "Harry Potter and the Prisoner of Azkaban"};
     cout << int_string_container.get_first_element() 
          << ": " << int_string_container.get_second_element() << endl;

     Container<string, float> string_float_container {"Harry Potter and the Chamber of Secrets", 8.99};
     cout << string_float_container.get_first_element() 
          << ": " << string_float_container.get_second_element() << endl;

     return 0;
}
