#include <iostream>

#include "BankAccount.h"

using std::cout;
using std::endl;

int main()
{
  BankAccount greg_account(111, "Greg", 3567.34f);
  BankAccount peter_account(444, "Peter", 11111.33334f);

  peter_account.buy_on_credit(10000);

  greg_account.show();
  peter_account.show();

  if (peter_account < greg_account) {
    cout << "Greg's balance is greater than Peter's balance" << endl;
  }

  if (operator<(peter_account, greg_account)) {
    cout << "Greg's balance is greater than Peter's balance" << endl;
  } 

  if (greg_account < peter_account) {
    cout << "Greg's balance is less than Peter's balance" << endl;
  }

  if (greg_account < 5000) {
    cout << "Greg's balance is less than 5000$" << endl;
  }

  if (greg_account < 8000.563) {
    cout << "Greg's balance is less than 8000.563$" << endl;
  }

  if (operator<(greg_account, 8000.563)) {
    cout << "Greg's balance is less than 8000.563$" << endl;
  }

  if (222.65 < greg_account) {
    cout << "Greg's balance is greater than 222.65$" << endl;
  }

  if (512 < greg_account) {
    cout << "Greg's balance is greater than 512$" << endl;
  }

  if (operator<(512, greg_account)) {
    cout << "Greg's balance is greater than 512$" << endl;
  }

  return 0;
}
