#include <string>
#include <iostream>

#include "BankAccount.h"

using std::string;
using std::cout;
using std::endl;

BankAccount::BankAccount(string name, float balance) :
    name(name), balance(balance) {

    credit_card = new CreditCard("Visa", 1000);

    cout << "Constructing account: " << name 
         << " balance: " << balance << endl;
}

BankAccount::BankAccount(const BankAccount& other) {
    credit_card = new CreditCard(*(other.credit_card));

    this->name = other.name;
    this->balance = other.balance;

    cout << "Copy constructing account: " << name 
         << " balance: " << balance << endl;
}

BankAccount& BankAccount::operator=(BankAccount rhs) {
    cout << "Assignment operator=() invoked" << endl;
   
    swap(rhs);

    return *this;
}

void BankAccount::swap(BankAccount& other) noexcept {
    std::swap(credit_card, other.credit_card);
    std::swap(name, other.name);
    std::swap(balance, other.balance);
}

BankAccount::~BankAccount() {
    delete credit_card;

    cout << "Destructing: " << name 
         << " balance: " << balance
         << endl;
}
