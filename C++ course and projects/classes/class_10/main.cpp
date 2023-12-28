#include <iostream>

#include "BankAccount.h"

using std::cout;
using std::endl;

int main()
{
  const BankAccount claudia_account("Claudia", 10000.45f);
  const BankAccount* vagg_account= new BankAccount("Vagg", 10000.45f);
  const BankAccount& danae_account = claudia_account;
  BankAccount takis_account("Takis", 10000.45f);
  const BankAccount bill_account("Bill", 10000.45f);

  BankAccount& bill_ref = const_cast<BankAccount&>(bill_account); 
  bill_ref.withdraw(10.5f);
  cout << bill_ref.get_balance() << endl;
  cout << "-----------Withdraw and Deposit-----------" << endl;

  std::string test = claudia_account.get_name();
  cout << test << endl;
  std::string test1 = vagg_account->get_name();
  cout << test1 << endl;
  std::string test2 = danae_account.get_name();
  cout << test2 << endl;
  std::string& test3 = takis_account.get_name();
  cout << test3 << endl;
  takis_account.get_name() = "George";
  std::string test4 = takis_account.get_name();
  cout << test4 << endl;
  //claudia_account.withdraw(23.05f); // not const, so not valid
  //vagg_account->withdraw(23.05f); // not const, so not valid
  //danae_account.withdraw(23.05f); // not const, so not valid

  return 0;
}
