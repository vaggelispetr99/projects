#include <iostream>

#include "BankAccount.h"

using std::cout;
using std::endl;

int main()
{
  BankAccount troy_account("Troy", 6543.33f);

  troy_account = troy_account;

  cout << "--------------Original--------------" << endl;
  cout << troy_account;

  return 0;
}
