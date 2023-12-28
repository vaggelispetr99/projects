#pragma once
#include <iostream>

template <typename T>
class Container {

  private:
    T element;

  public:
    Container(T element) : element(element) {
    }

    const T get_element() const {
      return element;
    };

    // All instances of this template are friends with Container
    template <typename U>
    friend std::ostream& operator<<(std::ostream& stream, const Container<U>& container);
};

template <typename U>
std::ostream& operator<<(std::ostream& stream, const Container<U>& container) {

    // Can access all containers Container<string>, Container<Double>
    // no matter what type U is in this instance
    stream << "********************" << std::endl;

    stream << container.get_element() << std::endl;
    stream << "********************" << std::endl;

    return stream;
}