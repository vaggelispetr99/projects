#pragma once
#include <iostream>

template <typename T>
class Stack {
  private:
    static inline int default_size = 10;
    int max_size;
    int current_size;
    T* elements;

  public:
    Stack();

    explicit Stack(int max_size);

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

