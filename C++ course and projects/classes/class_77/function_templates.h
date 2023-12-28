#pragma once
#include<string>

template<typename T>
T smaller(T first, T second) {
  std::cout << "template T smaller(T first, T second)" << std::endl;
  return first < second ? first : second;
}

std::string smaller(std::string first, std::string second) {
  std::cout << "overloaded string smaller(string first, string second)" << std::endl;
  return first.length() < second.length() ? first : second;
}

template<typename T>
std::vector<T> smaller(std::vector<T> element_vector, T element) {
  std::cout << "template T smaller(vector<T> element_vector, T element)" << std::endl;

  std::vector<T> filtered_vector;

  for (T& el : element_vector) {
    if (smaller(el, element) == el) {
      filtered_vector.push_back(el);
    }
  }

  return filtered_vector;
}

template<typename T>
T* smaller(T* first, T* second) {
  std::cout << "template T* smaller(T* first, T* second)" << std::endl;
  return *first < *second ? first : second;
}

template<typename T>
T larger(T first, T second) {
  std::cout << "T larger(T first, T second)" << std::endl;
  return first > second ? first : second;
}

std::string larger(std::string first, std::string second) {
  std::cout << "overloaded string larger(string first, string second)" << std::endl;
  return first.length() > second.length() ? first : second;
}

template<typename T>
std::vector<T> larger(std::vector<T> element_vector, T element) {
  std::cout << "template T larger(vector<T> element_vector, T element)" << std::endl;

  std::vector<T> filtered_vector;

  for (T& el : element_vector) {
    if (larger(el, element) == el) {
      filtered_vector.push_back(el);
    }
  }

  return filtered_vector;
}

template<typename T>
T* larger(T* first, T* second) {
  std::cout << "template T* larger(T* first, T* second)" << std::endl;
  return *first > *second ? first : second;
}