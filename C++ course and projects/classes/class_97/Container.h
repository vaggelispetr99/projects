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

    // A function for each instantiation of the Container template which can access
    // only the instances of that template
    friend std::ostream& operator<<(std::ostream& stream, const Container& container) {
      stream << "********************" << std::endl;

      stream << container.get_element() << std::endl;
      stream << "********************" << std::endl;

      return stream;
    }
};
