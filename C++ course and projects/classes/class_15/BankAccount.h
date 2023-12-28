#pragma once
#include <string>
#include <vector>

#include "CreditCard.h"

class BankAccount {
  private:
    std::string name;
    float balance;
    CreditCard credit_card;

  public:

    BankAccount(std::string name, float balance);

    void update_credit_card(std::string n);

    void update_credit_limit(float l);

    void display() const;

    friend void display_transaction_report(const BankAccount& bank_account);
};
