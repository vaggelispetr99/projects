#include<iostream>
#include<string>

#include "class_5.h"

using std::string;
using std::cout;
using std::endl;


BankAcoount::BankAcoount(float fee): 
BankAcoount(fee, "Tiliou"){
    cout << "One arg" << endl;
                        
}

BankAcoount::BankAcoount(float fee, string name):
BankAcoount(fee, name, 502.36){
    cout << "Second arg" << endl;                    
}

BankAcoount::BankAcoount(float fee, string name, float balance):
    fee(fee), name(name), balance(balance){                     //this way you initialize only once the member variables
    cout << this->fee << this->name << "   " << this->balance << "   " << this << endl;
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
