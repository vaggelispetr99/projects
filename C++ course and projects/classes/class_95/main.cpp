#include <iostream>
#include <string>

#include "Container.h"
#include "BankAccount.h"

using std::cout;
using std::endl;
using std::string;

int main()
{
  Container<string> string_container {"Some string"};
  // Container<float> float_container {123.756f};
  Container<BankAccount> bankaccount_container {BankAccount {"Alice", 12098.34}};

  cout << "String element: " << string_container.get_element() << endl;
  // cout << "Float element: " << float_container.get_element() << endl;
  cout << "Bank account element: " << bankaccount_container.get_element() << endl;
}
