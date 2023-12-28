#include <algorithm>
#include <iostream>
#include <vector>

using std::cout;
using std::endl;
using std::string;
using std::vector;

int main()
{
  vector<int> int_vector {102, 116, 117, 99, 34, 27, 55, 88};


  cout << endl << "---------Original Values------------" <<  endl;
  std::for_each(int_vector.begin(), int_vector.end(), 
                [] (int el) {cout << el << endl;});

  std::for_each(int_vector.begin(), int_vector.end(), 
                [] (int& el) {el = el + 10;});

  cout << endl << "---------Incremented by 10 Values------------" <<  endl;
  std::for_each(int_vector.begin(), int_vector.end(), 
                [] (int el) {cout << el << endl;});

  auto even_it = std::find_if(int_vector.begin(), int_vector.end(), 
                              [] (const int& el) {return el % 2 == 0;});

  cout << endl << "---------Even number?------------" <<  endl;
  if (even_it != int_vector.end()) {
    cout << "The vector contains an even number: " << *even_it << endl;
  }

  auto odd_it = std::find_if(int_vector.begin(), int_vector.end(), 
                             [] (const int& el) {return el % 2 != 0;});

  cout << endl << "---------Odd number?------------" <<  endl;
  if (odd_it != int_vector.end()) {
    cout << "The vector contains an odd number: " << *odd_it << endl;
  }
}


