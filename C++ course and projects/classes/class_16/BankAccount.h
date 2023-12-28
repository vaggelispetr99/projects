#pragma once
#include <string>
#include <vector>

class BankAccount {
  private:
    std::string name {};
    float balance {0};

    class CreditCard {
      public:
        std::string name {};
        float limit {0};
        float current_limit {0};

        CreditCard(std::string name, float limit) : 
          name(name), limit(limit), current_limit(limit) {
        }
    };

    CreditCard credit_card;

    std::vector<std::string> transaction_log;

  public:

    BankAccount(std::string name, float balance);

    bool withdraw(float amount);

    bool deposit(float amount);

    bool buy_on_credit(float amount);

    bool pay_off_credit_card();

    void display_transaction_report() const;
};
