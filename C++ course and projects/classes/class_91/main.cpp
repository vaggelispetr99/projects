#include <iostream>
#include <string>

#include "Stack.h"

using std::cout;
using std::endl;
using std::string;


int main()
{
     Stack<> string_stack_100;
     string_stack_100.push("Veronica");

     cout << "string_stack_100 stack max size: " << string_stack_100.get_max_size() 
          << " current size: " << string_stack_100.get_current_size() << endl;

     Stack<float> float_stack_100;
     float_stack_100.push(23.45f);

     cout << "float_stack_100 stack max size: " << float_stack_100.get_max_size() 
          << " current size: " << float_stack_100.get_current_size() << endl;

     Stack<int, 13> int_stack_13;
     int_stack_13.push(23);

     cout << "int_stack_13 stack max size: " << int_stack_13.get_max_size() 
          << " current size: " << int_stack_13.get_current_size() << endl;

     return 0;
}
