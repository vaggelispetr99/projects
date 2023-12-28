#pragma once
#include <string>
#include "HeatedSeats.h"
#include "LeatherSeats.h"

class HeatedLeatherSeats : public HeatedSeats, public LeatherSeats {

  public:
    HeatedLeatherSeats(float heated_seats_price, float leather_seats_price, 
                       int max_temperature, std::string color);
};
