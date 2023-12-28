#pragma once

#include <string>
#include <iostream>

#include "BrowserException.h"

class InvalidInputException : public BrowserException {

private:
  std::string invalid_var_name;

public:
  InvalidInputException(std::string message, std::string invalid_var_name)
      : BrowserException(message), invalid_var_name(invalid_var_name)  {
  }

  const char* what() const noexcept override {
    std::cout << "InvalidInputException::what()" << std::endl;

    return invalid_var_name.c_str();
  }
};