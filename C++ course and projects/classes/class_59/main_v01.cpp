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

  if (greg_account < peter_account) {
    cout << "Greg's balance is less than Peter's balance" << endl;
  }

  /*if (peter_account.operator<(greg_account)) {
    cout << "Greg's balance is greater than Peter's balance" << endl;
  }

  if (greg_account.operator<(peter_account)) {
    cout << "Greg's balance is less than Peter's balance" << endl;
  }*/

  return 0;
}
