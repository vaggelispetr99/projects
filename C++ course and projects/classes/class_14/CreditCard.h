#pragma once
#include <string>

class CreditCard {
  private:
    std::string name;
    float limit;

  public:

    CreditCard(std::string name, float limit);

    void set_limit(float l);

    void display();

    ~CreditCard();
};
