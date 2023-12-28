#pragma once
#include <string>
#include "Vehicle.h"
#include "Accessories.h"

class Car : public Vehicle, public Accessories {

  private:
    std::string make;
    std::string model;

  public:
    Car(std::string make, std::string model, float vehicle_price, 
        std::string accessories, float accessories_price);

    std::string get_make() const;

    std::string get_model() const;
};
