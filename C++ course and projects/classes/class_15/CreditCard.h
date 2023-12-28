#pragma once
#include <string>

class CreditCard {
  private:
    std::string name;
    float limit;

  public:
    CreditCard(std::string name, float limit);

    friend class BankAccount;
};
