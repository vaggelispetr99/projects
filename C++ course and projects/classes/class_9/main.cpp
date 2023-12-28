#include <iostream>

#include "BankAccount.h"

using std::cout;
using std::endl;

int main()
{
  BankAccount claudia_account("Claudia", 10000.45f);

  cout << "-----------Withdraw and Deposit-----------" << endl;

  claudia_account.withdraw(300).withdraw(200).deposit(5000).deposit(2500);

  return 0;
}
