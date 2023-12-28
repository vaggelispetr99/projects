#include <string>
#include <iostream>

#include "BankAccount.h"

using std::string;
using std::cout;
using std::endl;
using std::to_string;

BankAccount::BankAccount(string name, float balance) :
    name(name), balance(balance), credit_card("Mastercard", 1000) {
}

void BankAccount::update_credit_card(std::string n) {
    credit_card.name = n;
}

void BankAccount::update_credit_limit(float l) {
    credit_card.limit = l;
}

void BankAccount::display() const {
    cout << "-----------------------------------" << endl;
    cout << "Name: " << name << " balance: " << balance << endl;
    cout << "Credit card: " << credit_card.name 
         << " limit: " << credit_card.limit << endl;
    cout << "-----------------------------------" << endl;
}

//This is a friend function of BankAccount class and so can not access the private fields of the CreditCard class
//Can be placed also in main.cpp file
/*void display_transaction_report(const BankAccount& bank_account) {

  cout << "-----------------Account Details--------------" << endl;
  cout << "Name: " << bank_account.name 
       << " current balance: " << bank_account.balance << endl;

}*/
