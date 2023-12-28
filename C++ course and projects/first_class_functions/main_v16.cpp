#include <iostream>
#include <vector>
#include <exception>

#include "compare_function_objects.h"

using std::cout;
using std::cin;
using std::endl;
using std::string;
using std::vector;
using std::exception;

template <typename T, typename Comparison>
const T find_max_or_min(vector<T> values, Comparison compare) {
    if (values.empty()) {
      throw exception();
    }

    T max_or_min = values.at(0);

    for (const T& val : values) {
      if (compare(val, max_or_min)) {
        max_or_min = val;
      }
    }                 

    return max_or_min;
}

int main()
{
  vector<string> string_vector {
    "Rosalind", "John", "Tim", "Igor", "Geraldine"
  };

  StringLonger string_longer;
  StringShorter string_shorter;

  cout << "String------------" <<  endl;
  cout << "Longest string is: " << find_max_or_min(string_vector, string_longer) << endl;
  cout << "Shortest string is: " << find_max_or_min(string_vector, string_shorter) << endl;
}

