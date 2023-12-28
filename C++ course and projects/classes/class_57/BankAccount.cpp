#include <string>
#include <iostream>
#include <cmath>

#include "BankAccount.h"

using std::string;
using std::cout;
using std::endl;

BankAccount::BankAccount(int account_id, string name, float balance) :
    account_id(account_id), name(name), balance(balance), cc_due(0) {
}

string BankAccount::get_name() const {
    return name;
}

float BankAccount::get_balance() const {
    return balance;
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

int BankAccount::compare(const BankAccount& other) const {
    float this_balance = balance - cc_due;
    float other_balance = other.balance - other.cc_due;

    if (std::fabs(this_balance - other_balance) < 0.001) {
        return 0;
    } else if (this_balance < other_balance) {
        return -1;
    }  

    return 1;
}

void BankAccount::show() const {
    cout << "---------------" << name << "---------------" << endl;
    cout << "Balance: " << balance 
         << " Credit card amount due: " << cc_due << endl << endl;
}