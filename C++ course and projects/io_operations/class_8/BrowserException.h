#pragma once

#include <string>
#include <exception>

class BrowserException : public std::exception {

private:
  std::string message;

public:
  BrowserException(std::string message = "A browser exception occurred")
      : message(message)  {
  }

  // std::exception::what() returns a const char*, so we must as well
  const char* what() const noexcept override {
    return message.c_str();
  }
};
