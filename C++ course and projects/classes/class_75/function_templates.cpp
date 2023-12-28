#include <iostream>
#include <string>
#include <vector>

using std::cout;
using std::endl;
using std::string;
using std::vector;

template<typename T>
T smaller(T first, T second) {
  return first < second ? first : second;
}

template<typename T>
void swap(T& first, T& second) {
  T temp = first;

  first = second;

  second = temp;
}

template<typename T>
void decorative_display(const T& something) {
  cout << "************************" << endl;
  cout << something << endl;
  cout << "************************" << endl;
}

template<typename T>
vector<T> create_vector(T first_el, T second_el, T third_el) {
  vector<T> element_vector;

  element_vector.push_back(first_el);
  element_vector.push_back(second_el);
  element_vector.push_back(third_el);

  return element_vector;
}

template<typename T>
void print_elements(vector<T> element_vector) {
  for (const T& element : element_vector) {
    decorative_display(element);
  }
}
