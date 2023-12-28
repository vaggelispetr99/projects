#include <string>
#include <iostream>

#include "CreditCard.h"

using std::string;
using std::cout;
using std::endl;

CreditCard::CreditCard(string name, float limit) :
    name(name), limit(limit) {
    
    cout << "Constructing card: " << name << " limit: " << limit << endl;
}

void CreditCard::set_limit(float l) {
    limit = l;
}

void CreditCard::display() {
    cout << "Card name: " << name << " limit: " << limit << endl;
}

CreditCard::~CreditCard() {
    cout << "Destructing card: " << name << " limit: " << limit << endl;
}
