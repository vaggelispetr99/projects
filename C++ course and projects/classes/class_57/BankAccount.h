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

    std::string get_name() const;

    float get_balance() const;

    bool buy_on_credit(float amount);

    bool pay_off_credit();

    int compare(const BankAccount& other) const;

    void show() const;
};
