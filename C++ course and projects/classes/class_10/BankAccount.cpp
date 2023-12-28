#include <string>
#include <iostream>

#include "BankAccount.h"

using std::string;
using std::cout;
using std::endl;

BankAccount::BankAccount(string n, float b) 
    : name(n), balance(b) {
}

void BankAccount::display() {
    cout << "Name: " << name << " balance: " << balance << endl;
}

BankAccount& BankAccount::withdraw(float amount) {
    if (balance >= amount) {
        balance -= amount;
        cout << "New balance: " << balance 
             << " after withdrawing: " << amount << endl;

        return *this;
    }

    cout << "Insufficient balance: " << balance 
         << " could not withdraw: " << amount << endl;

    return *this;
}

BankAccount& BankAccount::deposit(float amount) {
    if (amount >= 0) {
        balance += amount;

        cout << "New balance: " << balance 
             << " after depositing: " << amount << endl;

        return *this;
    }

    cout << "Unchanged balance: " << balance 
         << " could not deposit: " << amount << endl;

    return *this;
}

string BankAccount::get_name() const{
    cout << "const version" << endl;
    balance_check_count++;
    cout << "Balance check= " << balance_check_count << endl;
    return this->name;
}

string& BankAccount::get_name() {
    cout << "non const version" << endl;
    return this->name;
}

float BankAccount::get_balance(){
    return this->balance;
}