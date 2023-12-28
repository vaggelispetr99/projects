#include <string>
#include <iostream>

#include "HeatedSeats.h"

using std::string;
using std::cout;
using std::endl;

HeatedSeats::HeatedSeats(float price, int max_temperature) :
    Accessory(price), max_temperature(max_temperature) {
}

int HeatedSeats::get_max_temperature() const {
    return max_temperature;
}
