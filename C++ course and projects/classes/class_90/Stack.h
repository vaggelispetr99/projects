#pragma once
#include <iostream>

template <typename T, int max_size>
class Stack {
  private:
    int current_size;
    T* elements;

  public:
    Stack();

    Stack(std::initializer_list<T> list);

    Stack(const Stack& other);

    int get_max_size() const;

    int get_current_size() const;

    const T* get_elements() const;

    void push(const T& element);

    const T& pop();

    Stack& operator=(Stack rhs);

    void swap(Stack& other) noexcept;

    ~Stack();
};

#include "Stack.cpp"

