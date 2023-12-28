#pragma once

template<typename T>
T smaller(T first, T second) {
  return first < second ? first : second;
}

template<typename T>
T larger(T first, T second) {
  return first > second ? first : second;
}
