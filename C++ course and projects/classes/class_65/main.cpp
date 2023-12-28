#include <iostream>

#include "BankAccount.h"

using std::cout;
using std::endl;

int main()
{
  BankAccount troy_account("Troy", 6543.33f);

  cout << "--------------Original--------------" << endl;
  cout << troy_account;

  BankAccount troy_account_copy;
  cout << "----------------------------" << endl;
  troy_account_copy = troy_account;

  cout << "--------------Copy--------------" << endl;
  cout << troy_account_copy;

  troy_account = troy_account;
  
  cout << "--------------Original-Copy--------------" << endl;
  cout << troy_account;

  troy_account = troy_account_copy;

  cout << "--------------Final-Original-Copy--------------" << endl;
  cout << troy_account;

  return 0;
}
