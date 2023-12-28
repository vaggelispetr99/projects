#include <iostream>

#include "function_objects.h"

using std::cout;
using std::cin;
using std::endl;
using std::string;

int main()
{
  string input_string;

  cout << "Please enter a string: ";
  std::getline(cin, input_string);

  StringLowercase string_lowercase;
  StringUppercase string_uppercase;

  cout << endl << "---------Original String------------" <<  endl;
  cout << input_string<< endl;
  
  cout << endl << "---------Lowercase String------------" <<  endl;
  cout << string_lowercase.operator()(input_string) << endl;

  cout << endl << "---------Uppercase String------------" <<  endl;
  cout << string_uppercase.operator()(input_string) << endl;
}

