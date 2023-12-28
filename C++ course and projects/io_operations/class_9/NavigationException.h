#pragma once

#include <string>

class NavigationException {

private:
  std::string message;

public:
  NavigationException(std::string message)
      : message(message)  {
  }

  std::string what() const noexcept  {
    return message;
  }
};
