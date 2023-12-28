#pragma once
#include <string>

class BankAccount {

  private:
    std::string name;
    float balance;
    float cc_due;

  public:
    BankAccount(std::string name, float balance, float cc_due);

    std::string get_name() const {
      return name;
    }

    float get_balance() const {
      return balance;
    }

    float get_cc_due() const {
      return cc_due;
    }

    bool operator<(const BankAccount& other) const {
      float this_balance = this->balance - this->cc_due;
      float other_balance = other.balance - other.cc_due;

      return this_balance < other_balance;
    }

    bool operator>(const BankAccount& other) const {
      float this_balance = this->balance - this->cc_due;
      float other_balance = other.balance - other.cc_due;

      return this_balance > other_balance;
    }
};

inline std::ostream& operator<<(
  std::ostream& stream, const BankAccount& bank_account) {
  stream << "Name: " << bank_account.get_name()
         << " balance: " << bank_account.get_balance() 
         << " cc due: " << bank_account.get_cc_due() << std::endl;

  return stream;
}
