#include <iostream>

using std::cout;
using std::endl;
using std::string;


template<typename T>
T larger(T first, T second);

int main()
{
  cout << "Larger of 10.11 and 23 is: " << larger<double>(10.11, 23) << endl;

  cout << "Larger of 111 and 76.34 is: " << larger<float>(111, 76.34f) << endl;

  cout << "Larger of 111 and 76 is: " << larger<long>(111l, 76) << endl;

  string alice = "Alice";
  std::string_view zoe {"Zoe"};
  cout << "Larger of 'Alice' and 'Zoe' is: " << larger<std::string_view>(alice, zoe) << endl;
}


template<typename T>
T larger(T first, T second) {
  return first > second ? first : second;
}
