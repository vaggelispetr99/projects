#pragma once

#include <string>

#include "BrowserException.h"

class InvalidInputException : public BrowserException {

public:
  InvalidInputException(std::string message)
      : BrowserException(message)  {
  }
};
