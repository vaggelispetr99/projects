#include <string>
#include <iostream>

#include "BankAccount.h"
#include "CreditCard.h"

using std::string;
using std::cout;
using std::endl;

BankAccount::BankAccount(string name, float balance, string account_type) :
    name(name), balance(balance), account_type(account_type) {
    credit_card = new CreditCard("Mastercard", 3000);
    cout << "Constructing: " << name << " balance: " << balance << endl;
}

BankAccount::BankAccount(const BankAccount& bank_account) :
    name(bank_account.name), 
    balance(bank_account.balance), 
    account_type(bank_account.account_type) {
    
    credit_card = new CreditCard(*(bank_account.credit_card));
    cout << "Copy constructing: " << name << " balance: " << balance << endl;
}

void BankAccount::set_credit_limit(float l){
    credit_card-> set_limit(l);
}
string BankAccount::get_name() const {
    return name;
}

float BankAccount::get_balance() const {
    return balance;
}

void BankAccount::set_balance(float amount) {
    balance = amount;
}

string BankAccount::get_account_type() const {
    return account_type;
}

void BankAccount::display() const {
    cout << "Name: " << name << " balance: " << balance  << " account type: " << account_type << endl;
    credit_card->display();
    cout << "Address of the credit_card object: " << credit_card << endl; 
}

BankAccount::~BankAccount() {
    delete credit_card;
    credit_card = nullptr;
    cout << "Destructing: " << name << " balance: " << balance << endl;
}
