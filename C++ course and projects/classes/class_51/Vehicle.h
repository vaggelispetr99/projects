#pragma once
#include <string>

class Vehicle {

  private:
    std::string vehicle_type;
    float price;

  public:
    Vehicle(std::string vehicle_type, float price);

    std::string get_vehicle_type() const;

    float virtual get_price() const;

    float taxes() const;
};

