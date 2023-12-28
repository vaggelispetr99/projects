#include <string>
#include <iostream>

#include "HeatedLeatherSeats.h"

using std::string;
using std::cout;
using std::endl;

HeatedLeatherSeats::HeatedLeatherSeats(
    float heated_seats_price, float leather_seats_price, 
    int max_temperature, string color) :
    Accessory(heated_seats_price + leather_seats_price),
    HeatedSeats(heated_seats_price, max_temperature), 
    LeatherSeats(leather_seats_price, color) {
}

