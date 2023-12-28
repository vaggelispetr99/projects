#pragma once

#include <string>

#include "BrowserException.h"

class NavigationException : public BrowserException {

private:
  std::string last_url;

public:
  NavigationException(std::string message, std::string last_url)
      : BrowserException(message), last_url(last_url)  {
  }

  const char* what() const noexcept override {
    std::cout << "NavigationException::what()" << std::endl;

    return last_url.c_str();
  }
};