#include <string>
#include <iostream>

#include "Accessory.h"

using std::string;
using std::cout;
using std::endl;

Accessory::Accessory(float price) : price(price) {
}

float Accessory::get_price() const {
    return price;
}
