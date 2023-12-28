#pragma once

#include <string>
#include <iostream>
#include "Browser.h"

class Firefox : public Browser {

public:
  Firefox(std::string name) try : Browser(name) {

  } catch (...) { // Note the catch is after the closing curly brace of the function 

    // Exceptions from the member initialization list and the 
    // constructor body are caugh here
    std::cout << "Caught exception in initialization list or ctor body" << std::endl;

    // If an exception is not thrown here explicitly the current 
    // exception will be rethrown
  }
};
