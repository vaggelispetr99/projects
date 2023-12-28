#include<iostream>
#include<string>

#include "class_4.h"

using std::string;
using std::cout;
using std::endl;



BankAcoount::BankAcoount(const float& fee, string name, float balance):
    fee(fee), name(name), balance(balance){                     //this way you initialize only once the member variables
    cout << this->name << "   " << this->balance << endl;
}

string BankAcoount::get_name(){
    return name;
}

float BankAcoount::get_balance(){
    return balance;
}

/*void BankAcoount::set_name(string n){
    name = n;
}

void BankAcoount::set_balance(float b){
    balance = b;
}*/
