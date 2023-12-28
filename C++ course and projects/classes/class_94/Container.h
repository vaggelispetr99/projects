#pragma once
#include <iostream>

template <typename T, typename U>
class Container {
  private:
    T first_element;
    U second_element;

  public:
    Container(T first_element, U second_element);

    const T get_first_element() const;

    const U get_second_element() const;

    bool operator>(const Container& other) const;

    bool operator<(const Container& other) const;
};


template <typename U>
class Container<std::string, U> {
  private:
    std::string first_element;
    U second_element;

  public:
    Container(std::string first_element, U second_element);

    const std::string get_first_element() const;

    const U get_second_element() const;

    bool operator>(const Container& other) const;

    bool operator<(const Container& other) const;
};

#include "Container.cpp"
#include "Container_partial.cpp"
