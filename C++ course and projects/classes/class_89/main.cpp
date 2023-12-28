#include <iostream>
#include <string>

#include "Stack.h"

using std::cout;
using std::endl;
using std::string;


int main()
{    
     Stack int_stack {100};
     Stack str_stack {50};
     Stack flt_stack {80};
     Stack<string> string_stack {100};
     Stack<int> integer_stack(20);
     Stack<int> integer_stack_2{20};
     Stack<float> float_stack(30);
     Stack<float> float_stack_2{30.5};

     return 0;
}
