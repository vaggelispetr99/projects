#include <string>
#include <iostream>

#include "Car.h"

using std::string;
using std::cout;
using std::endl;

Car::Car(std::string make, std::string model, float vehicle_price, 
         string accessories, float accessories_price) :
        make(make), model(model), 
        Vehicle("car", vehicle_price),
        Accessories(accessories, accessories_price) {
}

string Car::get_make() const {
    return make;
}

string Car::get_model() const {
    return model;
}
