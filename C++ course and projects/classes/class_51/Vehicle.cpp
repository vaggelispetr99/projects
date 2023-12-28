#include <string>
#include <iostream>

#include "Vehicle.h"

using std::string;
using std::cout;
using std::endl;

Vehicle::Vehicle(string vehicle_type, float price) :
        vehicle_type(vehicle_type), price(price) {
}

string Vehicle::get_vehicle_type() const {
    return vehicle_type;
}

float Vehicle::get_price() const {
    return price;
}

float Vehicle::taxes() const {
    return price * 0.05;
}
