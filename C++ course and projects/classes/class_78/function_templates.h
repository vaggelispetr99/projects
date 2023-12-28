#pragma once
#include<vector>

template<typename TReturn, typename T1, typename T2>
std::vector<TReturn> merge_vectors(
  std::vector<T1> first_vector, std::vector<T2> second_vector) {

  std::vector<TReturn> merged_vector;

  for (T1& el : first_vector) {
    merged_vector.push_back(el);
  }

  for (T2& el : second_vector) {
    merged_vector.push_back(el);
  }

  return merged_vector;
}

template<typename TReturn, typename T1, typename T2>
TReturn sum_of(T1 first, T2 second) {
  return first + second;
}

template<typename TReturn, typename T1, typename T2>
TReturn difference_of(T1 first, T2 second) {
  return first - second;
}
