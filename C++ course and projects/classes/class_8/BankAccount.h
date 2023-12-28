#pragma once
#include <string>

class BankAccount {

  private:
    std::string name;
    float balance;

  public:
    BankAccount(std::string n, float b);

    void display();

    BankAccount* withdraw(float amount);

    BankAccount* deposit(float amount);
};
