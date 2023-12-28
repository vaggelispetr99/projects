#include<iostream>
#include<string>

#include "class_3.h"

using std::string;
using std::cout;
using std::endl;



BankAcoount::BankAcoount(string n, float b){
    name = n;
    balance = b;
    cout << name << "   " << balance << endl;
}

string BankAcoount::get_name(){
    return name;
}

float BankAcoount::get_balance(){
    return balance;
}

void BankAcoount::set_name(string n){
    name = n;
}

void BankAcoount::set_balance(float b){
    balance = b;
}
