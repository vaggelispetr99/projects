#pragma once
#include <string>

#include "CreditCard.h"

class BankAccount {

  private:
    std::string name;
    float balance;
    CreditCard* credit_card;

  public:
    BankAccount();

    BankAccount(std::string name, float balance);

    std::string get_name() const {
      return name;
    }

    float get_balance() const {
      return balance;
    }

    BankAccount& operator=(const BankAccount& rhs) {
      std::cout << "Assignment operator=() invoked" << std::endl;
      
      if (this != &rhs) {
        /* if (this->credit_card != nullptr){
          std::cout << "nuptr" << std::endl;
          std::cout << credit_card<< std::endl;
        } */
        //std::cout << "----------------------------" << std::endl;
        //std::cout << *(this->credit_card) << std::endl;
         //std::cout << "----------------------------" << std::endl;
        delete credit_card;
        credit_card = nullptr;

        this->name = rhs.name;
        this->balance = rhs.balance;
        
        credit_card = new CreditCard(*(rhs.credit_card));
      }
      std::cout << "Inside" << std::endl;
      return *this;
    }

    ~BankAccount();

    friend std::ostream& operator<<(std::ostream& stream, const BankAccount& bank_account);
};

inline std::ostream& operator<<(std::ostream& stream, const BankAccount& bank_account) {

  std::cout << std::endl << "***************************" << std::endl;
  stream << "Name: " << bank_account.get_name()
         << " balance: " << bank_account.get_balance() << std::endl;
  
  stream << *(bank_account.credit_card) << std::endl;

  stream << "Address of CreditCard variable: " 
         << bank_account.credit_card << std::endl;
  std::cout << "***************************" << std::endl << std::endl;

  return stream;
}
