#include <string>
#include <iostream>

using std::cout;
using std::endl;
using std::string;

template <typename U>
Container<string, U>::Container(string first_element, U second_element) : 
    first_element(first_element), second_element(second_element) {
   cout << "Partial specialization constructor called: " << first_element
        << ", " << second_element << endl;     
}

template <typename U>
const string Container<string, U>::get_first_element() const {
   return first_element;
}

template <typename U>
const U Container<string, U>::get_second_element() const {
   return second_element;
}

template <typename U>
bool Container<string, U>::operator>(
    const Container<string, U>& other) const {
   return second_element > other.second_element;
}

template <typename U>
bool Container<string, U>::operator<(
    const Container<string, U>& other) const {
   return second_element < other.second_element;
}
