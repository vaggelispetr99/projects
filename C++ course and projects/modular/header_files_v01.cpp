#include <iostream>
#include "math_utility_v01.h"

using std::cout;
using std::endl;

// double power_of(double num, int exponent);
// bool is_prime(int num);

int main()
{
  cout << "7 to the power 3: " << power_of(7, 3) << endl;
  cout << "11 to the power 4: " << power_of(11, 4) << endl;

  cout << "is prime 19: " << std::boolalpha << is_prime(19) << endl;
  cout << "is prime 39: " << std::boolalpha << is_prime(39) << endl;

  return 0;
}

// double power_of(double num, int exponent) {

//   double result = 1;
//   for (int i = 0; i < exponent; i++) {
//     result = result * num;
//   }

//   return result;
// }

// bool is_prime(int num) {

//   for (int i = 2; i < num / 2; i++) {
//     if (num % i == 0) {
//       return false;
//     }
//   }

//   return true;
// }

