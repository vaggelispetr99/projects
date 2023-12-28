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

  NavigationException(const NavigationException& other)
      : BrowserException(other.BrowserException::what()), 
         last_url(other.last_url)  {
      std::cout << "Copy constructing NavigationException" << std::endl;
  }

  const char* what() const noexcept override {
    std::cout << "NavigationException::what()" << std::endl;

    return last_url.c_str();
  }
};