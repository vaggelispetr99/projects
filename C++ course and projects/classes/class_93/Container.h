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

template <typename T>
class Container<T*> {
  private:
    T* element;

  public:
    Container(T* element);

    const T* get_element() const;

    bool operator>(const Container<T*>& other) const;

    bool operator<(const Container<T*>& other) const;
};

#include "Container.cpp"
#include "Container_pointers.cpp"
