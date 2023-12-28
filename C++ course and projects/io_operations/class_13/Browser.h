#pragma once

#include <string>
#include <exception>

class Browser {

private:
  std::string name;
  
public:
  Browser(std::string name) : name(name) {
    throw std::exception();
  }
};
