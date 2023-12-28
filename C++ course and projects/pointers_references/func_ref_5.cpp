#include <iostream>
#include <string>

using std::cout;
using std::endl;
using std::string;

void format_and_print(std::string_view first_name, 
                      std::string_view last_name, 
                      std::string_view city);

int main()
{
  format_and_print("Chris", "Jackson", "San Jose"); // copies are not made with std::string_view and so fster

  return 0;
}

void format_and_print(std::string_view first_name, 
                      std::string_view last_name, 
                      std::string_view city) {

  cout << "** " << first_name << " " << last_name << " (" << city << ") **" << endl; // + operator is not supported through std::string_view
}

