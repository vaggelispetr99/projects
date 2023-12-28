#pragma once
#include <string>

class Accessory {

  private:
    float price;

  public:
    Accessory(float price);

    float virtual get_price() const;
};

