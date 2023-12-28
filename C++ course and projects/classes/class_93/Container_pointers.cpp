#include <string>
#include <iostream>

using std::cout;
using std::endl;
using std::string;

template <typename T>
Container<T*>::Container(T* element) : element(element) {
   cout << "Specialized T* template: " << element << endl;
}

template <typename T>
const T* Container<T*>::get_element() const {
   return element;
}

template <typename T>
bool Container<T*>::operator>(const Container<T*>& other) const {
   cout << "Specialized T* template operator>()" << endl;
   return *element > *(other.element);
}

template <typename T>
bool Container<T*>::operator<(const Container<T*>& other) const {
   cout << "Specialized T* template operator<()" << endl;
   return *element < *(other.element);
}
