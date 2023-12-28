#include <string>
#include <iostream>

#include "BankAccount.h"

using std::string;
using std::cout;
using std::endl;

BankAccount::BankAccount() :
    name("Vagg"), balance(0) {

    credit_card = new CreditCard("Mastercard", 5000);

    cout << "Constructing account: " << name 
         << " balance: " << balance << endl;
}

BankAccount::BankAccount(string name, float balance) :
    name(name), balance(balance) {

    credit_card = new CreditCard("Visa", 1000);

    cout << "Constructing account: " << name 
         << " balance: " << balance << endl;
}

BankAccount::~BankAccount() {
    delete credit_card;

    cout << "Destructing: " << name 
         << " balance: " << balance
         << endl;
}
