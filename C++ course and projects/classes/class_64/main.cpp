#include <iostream>

#include "BankAccount.h"

using std::cout;
using std::endl;

int main()
{
  BankAccount troy_account("Troy", 6543.33f);
  BankAccount troy_account_duplicate;
  BankAccount troy_account_duplicate_2;
  BankAccount troy_account_duplicate_3(troy_account); // copy contructor invoked as the object is also contructed
  BankAccount troy_account_duplicate_4 = troy_account; // copy contructor invoked as the object is also contructed

  cout << "--------Troy Duplicate (Original values)--------" << endl;
  cout << troy_account_duplicate;

  cout << "--------Troy Duplicate 2 (Original values)--------" << endl;
  cout << troy_account_duplicate_2;  

  cout << "--------Troy Account (Original values)--------" << endl;
  cout << troy_account;

  cout << "--------Troy Duplicate 3 (Original values)--------" << endl;
  cout << troy_account_duplicate_3;

  cout << "--------Troy Duplicate 4 (Original values)--------" << endl;
  cout << troy_account_duplicate_4;

  troy_account_duplicate = troy_account_duplicate_2 = troy_account; // copy assignment operator invoked
  troy_account_duplicate.buy_on_credit(1000);

  cout << "--------Troy Account (Updated values)--------" << endl;
  cout << troy_account;


  cout << "--------Troy Duplicate (Updated values)--------" << endl;
  cout << troy_account_duplicate;

  cout << "--------Troy Duplicate 2 (Updated values)--------" << endl;
  cout << troy_account_duplicate_2; 

  cout << &troy_account << endl;
  cout << &troy_account_duplicate << endl;
  cout << &troy_account_duplicate_2 << endl;
  cout << &troy_account_duplicate_3 << endl;
  cout << &troy_account_duplicate_4 << endl;

  return 0;
}
