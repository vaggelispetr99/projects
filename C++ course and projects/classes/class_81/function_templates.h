#pragma once

template<typename T1, typename T2>
decltype(auto) sum_of(T1 first, T2 second) {
  return first + second;
}

template<typename T1, typename T2>
decltype(auto) difference_of(T1 first, T2 second) {
  return first - second;
}
