#pragma once
#include <string>
#include <cmath>

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
    }

    float get_balance() const {
      return balance;
    }

    bool buy_on_credit(float amount);

    bool pay_off_credit();

    bool operator<(const BankAccount& other) const {
      float this_balance = this->balance - this->cc_due;
      float other_balance = other.balance - other.cc_due;

      return this_balance < other_balance;
    }

    bool operator<(double other) const {
      float this_balance = this->balance - this->cc_due;

      return this_balance < other;
    }

    bool operator==(const BankAccount& other) const {
      float this_balance = this->balance - this->cc_due;
      float other_balance = other.balance - other.cc_due;

      return std::fabs(this_balance - other_balance) < 0.00001;
    }

    bool operator==(double other) const {
      float this_balance = this->balance - this->cc_due;

      return std::fabs(this_balance - other) < 0.001;
    }

    bool operator>(const BankAccount& other) const {
      if (*this == other || *this < other) {
        return false;
      }

      return true;
    }

    bool operator>(double other) const {
      if (*this == other || *this < other) {
        return false;
      }

      return true;
    }

    friend bool operator<(double first, const BankAccount& second);

    friend bool operator==(double first, const BankAccount& second);

    friend bool operator>(double first, const BankAccount& second);

    void show() const;
};

inline bool operator<(double first, const BankAccount& second) {
    float second_balance = second.balance - second.cc_due;

    return first < second_balance;
}

inline bool operator==(double first, const BankAccount& second) {
    float second_balance = second.balance - second.cc_due;

    return std::fabs(first - second_balance) < 0.00001;
}

inline bool operator>(double first, const BankAccount& second) {
      if (first == second || first < second) {
        return false;
      }

      return true;
}
