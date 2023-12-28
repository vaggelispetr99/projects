#pragma once
#include <string>
#include "Accessory.h"

class LeatherSeats : public Accessory {
  private:
    std::string color;

  public:
    LeatherSeats(float price, std::string color);

    std::string get_color() const;
};

