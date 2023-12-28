
#pragma once
#include<vector>

template<typename T, int lower_bound, int upper_bound>
std::vector<T> filter_in_range(std::vector<T> element_vector) {

  std::vector<T> filtered_elements;

  for (T& el : element_vector) {
    if (el < upper_bound && el > lower_bound) {
      filtered_elements.push_back(el);
    }
  }

  return filtered_elements;
}
