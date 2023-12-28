#include <iostream>
#include <array>

using std::cout;
using std::endl;
using std::string;
using std::array;

int main()
{
  array<float, 8> int_arr = {10, 20, 30, 40, 50};

  cout << "--------------Size--------------" << endl;

  cout << "Size of array: " << int_arr.size() << endl;
  cout << "Maximum size of array: " << int_arr.max_size() << endl;
  cout << "Is array empty: " << std::boolalpha << int_arr.empty() << endl;

  cout << "-------------Contents---------------" << endl;

  for (auto& integer : int_arr) {
    cout << integer << endl;
  }

  cout << "--------------Random Access with operator[]--------------" << endl;

  cout << "Element at index 0: " << int_arr[0] << endl;
  cout << "Element at index 3: " << int_arr[3] << endl;

  cout << "--------------Random Access with at()--------------" << endl;

  cout << "Element at index 1: " << int_arr.at(1) << endl;
  cout << "Element at index 4: " << int_arr.at(4) << endl;
}

