#include <string>
#include <iostream>

using std::string;
using std::cout;
using std::endl;
using std::out_of_range;

template <typename T>
Stack<T>::Stack() : 
    max_size(default_size), current_size(0), elements(new T[max_size]) {
}

template <typename T>
Stack<T>::Stack(int max_size) : 
    max_size(max_size), current_size(0), elements(new T[max_size]) {
}

template <typename T>
Stack<T>::Stack(const Stack<T>& other) : Stack(other.max_size) {
    for (int i = 0; i < other.current_size; i++) {
        elements[i] = other.elements[i];
    }

    current_size = other.current_size;
}

template <typename T>
int Stack<T>::get_max_size() const {
   return max_size;
}

template <typename T>
int Stack<T>::get_current_size() const {
   return current_size;
}

template <typename T>
const T* Stack<T>::get_elements() const {
   return elements;
}

template <typename T>
void Stack<T>::push(const T& element) {
   if (current_size >= max_size) {
       throw out_of_range("The Stack has reached max capacity");
   }

   elements[current_size] = element;
   current_size++;
}

template <typename T>
const T& Stack<T>::pop() {
   if (current_size == 0) {
       throw out_of_range("There are no elements to pop in the Stack");
   }

   const T& top_element = elements[current_size - 1]; 
   current_size--;

   return top_element;
}

template <typename T>
Stack<T>& Stack<T>::operator=(Stack<T> rhs) {
    swap(rhs);
    return *this;
}

template <typename T>
void Stack<T>::swap(Stack<T>& other) noexcept {

    std::swap(elements, other.elements);
    std::swap(current_size, other.current_size);
    std::swap(max_size, other.max_size);
}


template <typename T>
Stack<T>::~Stack() {
    delete[] elements;
}
