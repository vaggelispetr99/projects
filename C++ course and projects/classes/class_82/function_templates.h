#pragma once

template<typename T1, typename T2>
decltype(auto) sum_of(T1 first, T2 second) {
  decltype(first + second) sum {};

  sum = first + second;

  return sum;
}

template<typename T1, typename T2>
decltype(auto) difference_of(T1 first, T2 second) {
  decltype(first - second) difference {};

  difference = first - second;

  return difference;
}

