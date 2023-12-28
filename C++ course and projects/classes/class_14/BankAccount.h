#pragma once
#include <string>
#include "CreditCard.h"
class BankAccount {
  private:
    std::string name;
    float balance;
    std::string account_type;
    CreditCard* credit_card;

  public:

    BankAccount(std::string name, float balance, std::string account_type);

    //BankAccount(const BankAccount& bank_account) = delete; //this tells the compiler to delete the default copy constructor but we don't have to declare it as the compiler does it by it's own when we create a new copy constructor

    //BankAccount(const BankAccount& bank_account) = default; //this is the default copy constructor but we don't have to declare it as the compiler does it by it's own

    BankAccount(const BankAccount& bank_account);

    void set_credit_limit(float l);

    std::string get_name() const;

    float get_balance() const;

    void set_balance(float amount);

    std::string get_account_type() const;

    void display() const;

    ~BankAccount();
};
