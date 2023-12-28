
#pragma once
#include<vector>

template<typename TReturn=double, typename T>
TReturn sum_values(std::vector<T> element_vector) {

  TReturn sum {};

  for (T& el : element_vector) {
    sum += el;
  }

  return sum;
}
