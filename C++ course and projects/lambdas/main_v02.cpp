#include <iostream>

using std::cout;
using std::endl;
using std::string;

int main()
{
  auto print_hello = [] () {
    cout << "Hello lambdas!" << endl;
  };

  print_hello();

  auto print_message = [] (string message) {
    cout << message << endl;
  };

  print_message("Lambdas can accept input arguments!");

  auto convert_to_uppercase = [] (string message) {
    string uppercase_message;
    for (const char& ch : message) {
        uppercase_message += ::toupper(ch);
    }

    return uppercase_message;
  };

  string uppercase_message =
      convert_to_uppercase("Lambdas can accept input arguments and also return values!");
  
  print_message(uppercase_message);
}
