#include <string>
#include <iostream>

using std::cout;
using std::endl;
using std::string;

template <typename T, typename U>
Container<T, U>::Container(T first_element, U second_element) : 
    first_element(first_element), second_element(second_element) {
}

template <typename T, typename U>
const T Container<T, U>::get_first_element() const {
   return first_element;
}

template <typename T, typename U>
const U Container<T, U>::get_second_element() const {
   return second_element;
}

template <typename T, typename U>
bool Container<T, U>::operator>(
    const Container<T, U>& other) const {
   return first_element > other.first_element && 
          second_element > other.second_element;
}

template <typename T, typename U>
bool Container<T, U>::operator<(
    const Container<T, U>& other) const {
   return first_element < other.first_element && 
          second_element < other.second_element;
}
