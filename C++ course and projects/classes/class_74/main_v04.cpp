#include <iostream>

using std::cout;
using std::endl;
using std::string;


template<typename T>
T larger(T first, T second);

int main()
{
  cout << "Larger of 10 and 23 is: " << larger(10, 23) << endl;

  cout << "Larger of 111 and 76 is: " << larger(111, 76) << endl;

  cout << "Larger of 111.34 and 76.87 is: " << larger(111.34, 76.87) << endl;

  cout << "Larger of 'A' and 'Z' is: " << larger('A', 'Z') << endl;

  string zoe = "Zoe";
  string alice = "Alice";

  cout << "Larger of 'Alice' and 'Zoe' is: " << larger(alice, zoe) << endl;
}

template<typename T>
T larger(T first, T second) {
  return first > second ? first : second;
}
