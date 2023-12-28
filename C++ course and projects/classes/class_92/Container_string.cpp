#include <string>
#include <iostream>

using std::cout;
using std::endl;
using std::string;

Container<string>::Container(string element) : element(element) {
   cout << "Specialized string template: " << element << endl;
}

const string Container<string>::get_element() const {
   return element;
}

bool Container<string>::operator>(const Container<string>& other) const {
   cout << "Specialized string template operator>()" << endl;
   return element.length() > other.element.length();
}

bool Container<string>::operator<(const Container<string>& other) const {
   cout << "Specialized string template operator<()" << endl;
   return element.length() < other.element.length();
}
