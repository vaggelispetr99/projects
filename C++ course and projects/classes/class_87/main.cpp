#include <iostream>
#include <string>

#include "Stack.h"

using std::cout;
using std::endl;
using std::string;

int main()
{
     Stack<string> string_stack;

     string_stack.push("Damon");   
     string_stack.push("Clara");
     string_stack.push("Betty");   
     string_stack.push("Alison");

     cout << "**** Adding elements to original ****" << endl;
     cout << "Stack max size: " << string_stack.get_max_size() 
          << " current size: " << string_stack.get_current_size() << endl;

     Stack<string> string_stack_copy {3};

     cout << "**** Copy ****" << endl;
     cout << "Stack max size: " << string_stack_copy.get_max_size() 
          << " current size: " << string_stack_copy.get_current_size() << endl;

     string_stack_copy = string_stack;

     string_stack.pop();
     string_stack.pop();

     cout << "**** Copy after assignment ****" << endl;
     cout << "Stack max size: " << string_stack_copy.get_max_size() 
          << " current size: " << string_stack_copy.get_current_size() << endl;

     auto* elements = string_stack_copy.get_elements();
     for (int i = 0; i < string_stack_copy.get_current_size(); i++) {
          cout << elements[i] << endl;
     }

     Stack<string> string_stack_copy_2 {string_stack};

     cout << "**** Copy 2 ****" << endl;
     cout << "Stack max size: " << string_stack_copy_2.get_max_size() 
          << " current size: " << string_stack_copy_2.get_current_size() << endl;

     string top_element_1 = string_stack.pop();
     cout << "Top element popped: " << top_element_1 << endl;

     string top_element_2 = string_stack.pop();
     cout << "Top element popped: " << top_element_2 << endl;

     cout << "**** Copy 2****" << endl;
     cout << "Stack max size: " << string_stack_copy_2.get_max_size() 
          << " current size: " << string_stack_copy_2.get_current_size() << endl;

     cout << "**** Original ****" << endl;
     cout << "Stack max size: " << string_stack.get_max_size() 
          << " current size: " << string_stack.get_current_size() << endl;

     auto* elements_1 = string_stack_copy_2.get_elements();
     for (int i = 0; i < string_stack_copy_2.get_current_size(); i++) {
          cout << elements_1[i] << endl;}
     return 0;
}
