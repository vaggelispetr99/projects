#include <iostream>

#include "BankAccount.h"

using std::cout;
using std::endl;

int main()
{

  BankAccount::CreditCard lily_credit_card("Visa", 2000);

  cout << "Credit card name: " << lily_credit_card.name 
       << " limit: " << lily_credit_card.limit
       << " current limit: " << lily_credit_card.current_limit << endl;

  return 0;
}
