#include <string>
#include <iostream>

#include "BankAccount.h"

using std::string;
using std::cout;
using std::endl;

BankAccount::BankAccount(string name, float balance, float cc_due) :
    name(name), balance(balance), cc_due(cc_due) {
}
