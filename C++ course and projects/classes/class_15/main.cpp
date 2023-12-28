#include <iostream>

#include "BankAccount.h"

using std::cout;
using std::endl;

//This is a friend function of BankAccount class and so can not access the private fields of the CreditCard class
//Can be placed also in BankAccount.cpp file
void display_transaction_report(const BankAccount& bank_account) {

  cout << "-----------------Account Details--------------" << endl;
  cout << "Name: " << bank_account.name 
       << " current balance: " << bank_account.name << endl;

}

int main()
{
  BankAccount lily_account("Lily", 1300.00f);

  lily_account.display();

  lily_account.update_credit_card("Amex");
  lily_account.update_credit_limit(5000);

  lily_account.display();

  return 0;
}
