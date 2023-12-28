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

bool  BankAccount::operator<(const BankAccount& other) const {
      float this_balance = this->balance - this->cc_due;
      float other_balance = other.balance - other.cc_due;

      return this_balance < other_balance;
    }


void BankAccount::show() const {
    cout << "---------------" << name << "---------------" << endl;
    cout << "Balance: " << balance 
         << " Credit card amount due: " << cc_due << endl << endl;
}