#pragma once
#include <type_traits>

template <typename T>
class Container {
  static_assert(std::is_default_constructible_v<T>, 
               "Container only works with types that have default constructors");

  static_assert(std::is_copy_constructible_v<T>, 
               "Container only works with types that have copy constructors");

  static_assert(std::is_class_v<T>, 
               "Container only works with class types");

  private:
    T element;

  public:
    Container(T element) : element(element) {
    }

    const T get_element() const {
      return element;
    };
};

