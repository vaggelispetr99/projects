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

bool BankAccount::withdraw(float amount) {
    if (balance >= amount) {
        balance -= amount;

        string transaction = "BT: New balance: " + to_string(balance) 
            + " withdrew: " + to_string(amount);
        transaction_log.push_back(transaction);

        return true;
    }

    string transaction = "BT: Insufficient balance: " + to_string(balance) 
        +  " could not withdraw: " + to_string(amount);
    transaction_log.push_back(transaction);

    return false;
}

bool BankAccount::deposit(float amount) {
    if (amount >= 0) {
        balance += amount;

        string transaction = "BT: New balance: " + to_string(balance) 
            + " deposited: " + to_string(amount);
        transaction_log.push_back(transaction);

        return true;
    }

    string transaction = "BT: Unchanged balance: " + to_string(balance) 
        +  " could not deposit: " + to_string(amount);
    transaction_log.push_back(transaction);

    return false;
}

bool BankAccount::buy_on_credit(float amount) {
    if (amount > 0 && credit_card.current_limit >= amount) {
        credit_card.current_limit -= amount;

        string transaction = "CCT: New limit: " 
            + to_string(credit_card.current_limit) 
            + " spent: " + to_string(amount);
        transaction_log.push_back(transaction);

        return true;
    }

    string transaction = "CCT: Insufficient limit: " 
        + to_string(credit_card.current_limit) 
        + " could not spend: " + to_string(amount);
    transaction_log.push_back(transaction);

    return false;
}

bool BankAccount::pay_off_credit_card() {
    float amount = credit_card.limit - credit_card.current_limit;

    if (amount <= balance) {
        balance -= amount;

        string transaction = "BT: New balance: " + to_string(balance) 
            + " made credit card payment): " + to_string(amount);
        transaction_log.push_back(transaction);

        return true;
    }

    string transaction = "BT: Insufficient balance: " 
        + to_string(balance) 
        + " could not pay off credit card: " + to_string(amount);
    transaction_log.push_back(transaction);

    return false;
}

void BankAccount::display_transaction_report() const {

  cout << "-----------------Account and Card Details--------------" << endl;
  cout << "Name: " << name << " current balance: " << balance << endl;
  cout << "Credit card name: " << credit_card.name 
       << " current limit: " << credit_card.current_limit << endl;

  cout << "-----------------Transactions--------------" << endl;
  for (auto transaction : transaction_log) {
    cout << transaction << endl;
  }
}

/*BankAccount::CreditCard::CreditCard(std::string name, float limit) : // can be place also in the .cpp file as here
          name(name), limit(limit), current_limit(limit) {
}*/