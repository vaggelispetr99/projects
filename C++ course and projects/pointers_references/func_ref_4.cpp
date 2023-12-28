#include <iostream>
#include <string>

using std::cout;
using std::endl;
using std::string;

void format_and_print(const string& first_name, 
                      const string& last_name, 
                      const string& city);

int main()
{
  format_and_print("Chris", "Jackson", "San Jose"); //string literals and so there is need for const string& (still copies are made)

  return 0;
}

void format_and_print(const string& first_name, 
                      const string& last_name, 
                      const string& city) {

  string formatted_string = 
    "** " + first_name + " " + last_name + " (" + city + ") **";

  cout << formatted_string << endl;
}

