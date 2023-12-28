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

  if (carrie_account <= troy_account) {
    cout << "Carrie's balance is less than or equal to Troy's balance" << endl;
  }
  cout << "------------------------" << endl;

  if (troy_account >= carrie_account) {
    cout << "Troy's balance is greater than or equal to than Carrie's balance" << endl;
  }
  cout << "------------------------" << endl;

  if (troy_account != carrie_account) {
    cout << "Troy's balance is not equal to Carrie's balance" << endl;
  }
  cout << "------------------------" << endl;


  return 0;
}
