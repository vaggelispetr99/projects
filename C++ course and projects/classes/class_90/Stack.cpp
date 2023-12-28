#include <string>
#include <iostream>

using std::string;
using std::cout;
using std::endl;
using std::out_of_range;
using std::invalid_argument;
using std::initializer_list;

template <typename T, int max_size>
Stack<T, max_size>::Stack() : 
    current_size(0), elements(new T[max_size]) {
}

template <typename T, int max_size>
Stack<T, max_size>::Stack(initializer_list<T> list) : 
    current_size(list.size()), 
    elements(new T[max_size]) {
    
    if (max_size < current_size) {
        throw invalid_argument("Max size should be at least equal to the current size");
    }

    int i = 0;
    for (auto it = list.begin(); it != list.end(); it++) {
        elements[i++] = *it;
    }
}

template <typename T, int max_size>
Stack<T, max_size>::Stack(const Stack<T, max_size>& other) : 
    current_size(other.current_size) {
    for (int i = 0; i < other.current_size; i++) {
        elements[i] = other.elements[i];
    }
}

template <typename T, int max_size>
int Stack<T, max_size>::get_max_size() const {
   return max_size;
}

template <typename T, int max_size>
int Stack<T, max_size>::get_current_size() const {
   return current_size;
}

template <typename T, int max_size>
const T* Stack<T, max_size>::get_elements() const {
   return elements;
}

template <typename T, int max_size>
void Stack<T, max_size>::push(const T& element) {
   if (current_size >= max_size) {
       throw out_of_range("The Stack has reached max capacity");
   }

   elements[current_size] = element;
   current_size++;
}

template <typename T, int max_size>
const T& Stack<T, max_size>::pop() {
   if (current_size == 0) {
       throw out_of_range("There are no elements to pop in the Stack");
   }

   const T& top_element = elements[current_size - 1]; 
   current_size--;

   return top_element;
}

template <typename T, int max_size>
Stack<T, max_size>& Stack<T, max_size>::operator=(Stack<T, max_size> rhs) {
    swap(rhs);
    return *this;
}

template <typename T, int max_size>
void Stack<T, max_size>::swap(Stack<T, max_size>& other) noexcept {

    std::swap(elements, other.elements);
    std::swap(current_size, other.current_size);
    std::swap(max_size, other.max_size);
}

template <typename T, int max_size>
Stack<T, max_size>::~Stack() {
    delete[] elements;
}
