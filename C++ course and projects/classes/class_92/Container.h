#pragma once
#include <iostream>

template <typename T>
class Container {
  private:
    T element;

  public:
    Container(T element);

    const T get_element() const;

    bool operator>(const Container& other) const;

    bool operator<(const Container& other) const;
};

template <>
class Container<std::string> {
  private:
    std::string element;

  public:
    Container(std::string element);

    const std::string get_element() const;

    bool operator>(const Container<std::string>& other) const;

    bool operator<(const Container<std::string>& other) const;
};

#include "Container.cpp"
#include "Container_string.cpp"
