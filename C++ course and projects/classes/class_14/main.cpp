#include <iostream>

#include "BankAccount.h"

using std::cout;
using std::endl;

void update_and_display_account_details(BankAccount bank_account) {
  bank_account.set_balance(9999);
  
  bank_account.display();
}

void update_and_display_account_details_ref(BankAccount& bank_account) {
  bank_account.set_balance(1111);
  
  
  bank_account.display();
}

int main()
{
  BankAccount james_account("James", 6487.23f, "savings");
  BankAccount james_copy {james_account};
  james_account.display();
  james_copy.display();
  cout << "--------------Before function------------" << endl;
  update_and_display_account_details(james_copy);
  james_copy.set_credit_limit(5555);
  cout << "--------------After function------------" << endl;
  james_account.display();
  james_copy.display();
  cout << "--------------Before function------------" << endl;
    james_account.display();
  james_copy.display();
  update_and_display_account_details_ref(james_copy);
  cout << "--------------After function------------" << endl;

  return 0;
}
