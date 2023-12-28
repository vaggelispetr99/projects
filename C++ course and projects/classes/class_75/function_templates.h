#pragma once
#include<vector>
#include "function_templates.cpp"

template<typename T>
T smaller(T first, T second);

template<typename T>
void swap(T& first, T& second);

template<typename T>
void decorative_display(const T& something);

template<typename T>
std::vector<T> create_vector(T first_el, T second_el, T third_el);

template<typename T>
void print_elements(std::vector<T> element_vector);


