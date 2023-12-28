#pragma once
#include <string>
#include "AudioDevice.h"

class Speakers : public AudioDevice {

  private:
    std::string dimensions;

  public:
    Speakers(std::string brand, float price, std::string dimensions);

    std::string get_dimensions() const;

    float get_price() const;
};
