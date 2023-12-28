#include <iostream>

#include "BankAccount.h"

using std::cout;
using std::endl;

int main()
{
  BankAccount carrie_account(1001, "Carrie", 3333.34f);
  BankAccount troy_account(1002, "Troy", 4325.45f);

  troy_account.buy_on_credit(100);

  carrie_account.show();
  troy_account.show();

  if (troy_account > carrie_account) {
    cout << "Troy's balance is greater than Carrie's balance" << endl;
  }
  cout << "------------------------" << endl;

  if (troy_account > 1000) {
    cout << "Troy's balance is greater than $1000" << endl;
  }
  cout << "------------------------" << endl;

  if (5333.34 > troy_account) {
    cout << "$5333.34 is is greater than Troy's balance" << endl;
  }

  return 0;
}
