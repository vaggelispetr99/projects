#pragma once
#include <string>

class Accessories {

  private:
    std::string accessories;
    float price;
    float taxes;

  public:
    Accessories(std::string accessories, float price);

    std::string get_accessories() const;

    float virtual get_price() const;

    float get_taxes() const;
};

