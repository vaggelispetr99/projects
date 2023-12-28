#pragma once
#include <string>

class BankAccount {

  private:
    std::string name;
    float balance;

  public:
    BankAccount() = default; //default costructor

    // default copy constructor exists

    BankAccount(std::string name, float balance);

    // BankAccount(const BankAccount& other) = delete; // delete default copy constructor

    std::string get_name() const {
      return name;
    }

    float get_balance() const {
      return balance;
    }

    friend std::ostream& operator<<(std::ostream& stream, const BankAccount& bank_account);
};

inline std::ostream& operator<<(std::ostream& stream, const BankAccount& bank_account) {

  std::cout << std::endl << "***************************" << std::endl;
  stream << "Name: " << bank_account.get_name()
         << " balance: " << bank_account.get_balance() << std::endl;
  std::cout << "***************************" << std::endl << std::endl;

  return stream;
}
