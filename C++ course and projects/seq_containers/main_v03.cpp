#include <iostream>
#include <array>

using std::cout;
using std::endl;
using std::string;
using std::array;

int main()
{
  array<int, 5> int_arr;

  int_arr.fill(1);

  cout << "-------------Contents---------------" << endl;

  for (auto& integer : int_arr) {
    cout << integer << endl;
  }

  int_arr[3] = 3;
  int_arr.at(4) = 4;

  cout << "-------------Updated Contents---------------" << endl;

  for (auto& integer : int_arr) {
    cout << integer << endl;
  }

  cout << "--------------Access front and back elements --------------" << endl;

  cout << "Element at the front of the array: " << int_arr.front() << endl;
  cout << "Element at the back of the array: " << int_arr.back() << endl;
}

