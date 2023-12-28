#pragma once
#include <string>

class BankAccount {

  private:
    int account_id;
    std::string name;
    float balance;
    float cc_due;

  public:
    BankAccount(int account_id, std::string name, float balance);

    std::string get_name() const {
      return name;
    };

    float get_balance() const {
      return balance;
    };

    bool buy_on_credit(float amount);

    bool pay_off_credit();

    void show() const;

    friend bool  operator<(const BankAccount& first, const BankAccount& second);
};

inline bool  operator<(const BankAccount& first, const BankAccount& second) {
  float first_balance = first.balance - first.cc_due;
  float second_balance = second.balance - second.cc_due;

  return first_balance < second_balance;
    }
