#include <string>
#include <iostream>

#include "BankAccount.h"

using std::string;
using std::cout;
using std::endl;

BankAccount::BankAccount(string name, float balance) :
    name(name), balance(balance), cc_due(0) {
}

BankAccount::BankAccount(const BankAccount& bank_account) :
    name(bank_account.name), balance(bank_account.balance), cc_due(bank_account.cc_due) {
        std::cout << "Copy Contructor invoked" << std::endl;
}

bool BankAccount::buy_on_credit(float amount) {
    if (amount <= (balance - cc_due)) {
        cc_due += amount;

        return true;
    }

    return false;
}

bool BankAccount::pay_off_credit() {
    if (balance > cc_due) {
        balance -= cc_due;
        cc_due = 0;

        return true;
    }

    return false;
}

BankAccount::~BankAccount() {
    cout << "Destructing: " << name 
         << " balance: " << balance 
         << " cc due: " << cc_due
         << endl;
}
