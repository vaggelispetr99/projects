#pragma once

template<typename T1, typename T2>
auto sum_of(T1 first, T2 second) -> decltype(first + second) {
  return first + second;
}

template<typename T1, typename T2>
auto difference_of(T1 first, T2 second) -> decltype(first - second) {
  return first - second;
}