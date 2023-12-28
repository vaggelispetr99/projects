#include <iostream>
#include <string>

using std::cout;
using std::endl;
using std::string;

void format_and_print(string& first_name, string& last_name, string& city);

int main()
{
  string f_name = "Chris";
  string l_name = "Jackson";
  string city = "San Jose";

  // format_and_print("Chris", "Jackson", "San Jose");

  format_and_print(f_name, l_name, city); // copies are made

  return 0;
}

void format_and_print(string& first_name, string& last_name, string& city) {

  string formatted_string = 
    "** " + first_name + " " + last_name + " (" + city + ") **";

  cout << formatted_string << endl;
}

