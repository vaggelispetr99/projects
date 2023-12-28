#pragma once
#include <string>

class AudioDevice {
  private:
    std::string brand;
    float price;

  public:
    AudioDevice(std::string brand, float price);

    std::string get_brand() const;

    float get_price() const;
};
