#pragma once
#include <string>

class BankAccount {

  private:
    std::string name;
    float balance;

    mutable unsigned int balance_check_count = 0;

  public:
    BankAccount(std::string n, float b);

    void display();

    BankAccount& withdraw(float amount);

    BankAccount& deposit(float amount);

    std::string get_name() const;

    std::string& get_name();

    float get_balance();
};
