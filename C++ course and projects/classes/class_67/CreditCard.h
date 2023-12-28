#pragma once
#include <string>

class CreditCard {
  private:
    std::string name;
    float limit;

  public:

    CreditCard(std::string name, float limit);

    std::string get_name() const {
      return name;
    }

    float get_limit() const {
      return limit;
    }

    ~CreditCard();
};

inline std::ostream& operator<<(std::ostream& stream, const CreditCard& credit_card) {
  stream << "Credit card name: " << credit_card.get_name()
         << " limit: " << credit_card.get_limit() << std::endl;

  return stream;
}
