#include <iostream>

#include "BankAccount.h"

using std::cout;
using std::endl;

int main()
{
  BankAccount lily_account("Lily", 1300.00f);

  lily_account.display_transaction_report();

  lily_account.withdraw(50);
  lily_account.withdraw(100);
  lily_account.deposit(3000);
  lily_account.buy_on_credit(800);
  lily_account.buy_on_credit(300);
  lily_account.pay_off_credit_card();

  lily_account.display_transaction_report();

  return 0;
}
