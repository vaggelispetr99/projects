#include <iostream>
#include <string>

#include "Stack.h"

using std::cout;
using std::endl;
using std::string;


int main()
{
     const int max_size = 20;
     Stack<int, max_size> integer_stack;

     // Stack<int, 20> integer_stack; // identical
     

     cout << "Integer stack max size: " << integer_stack.get_max_size() 
          << " current size: " << integer_stack.get_current_size() << endl;

     integer_stack.push(10);   
     integer_stack.push(20);   
     integer_stack.push(30);   
     integer_stack.push(40);

     cout << "**** After adding elements ****" << endl;
     cout << "Integer stack max size: " << integer_stack.get_max_size() 
          << " current size: " << integer_stack.get_current_size() << endl;

     int top_element_1 = integer_stack.pop();
     cout << "Top element popped: " << top_element_1 << endl;

     int top_element_2 = integer_stack.pop();
     cout << "Top element popped: " << top_element_2 << endl;

     cout << "**** After popping elements ****" << endl;
     cout << "Integer stack max size: " << integer_stack.get_max_size() 
          << " current size: " << integer_stack.get_current_size() << endl;

     Stack<string, 10> string_stack_10;
     Stack<string, 100> string_stack_100;

     cout << "string_stack_10 stack max size: " << string_stack_10.get_max_size() 
          << " current size: " << string_stack_10.get_current_size() << endl;

     cout << "string_stack_100 stack max size: " << string_stack_100.get_max_size() 
          << " current size: " << string_stack_100.get_current_size() << endl;

     return 0;
}
