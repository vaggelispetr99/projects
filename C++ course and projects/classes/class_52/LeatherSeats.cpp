#include <string>
#include <iostream>

#include "LeatherSeats.h"

using std::string;
using std::cout;
using std::endl;

LeatherSeats::LeatherSeats(float price, string color) :
    Accessory(price), color(color) {
}

string LeatherSeats::get_color() const {
    return color;
}
