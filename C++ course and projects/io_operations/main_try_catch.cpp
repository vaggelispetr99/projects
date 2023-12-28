#include <iostream>

using std::cout;
using std::cin;
using std::endl;
using std::string;

int main()
{
  int num;

  while (true) {
    cout << "Please enter an even number (-1 to exit): ";
    cin >> num;

    try {
      if (num == -1) {
        throw "User terminated the program!";
      }

      if (num % 2 != 0) {
        throw num;
      }

      if (num == 10) {
        float float_num = 10.1;
        throw float_num;
      }

      cout << "Square of number is: " << num * num << endl;
    } catch (const char* message) {

      cout << message << endl;
      break;
    } catch (int number) {

      cout << "You entered " << number << " which is an odd number, try again!" << endl;
      continue;
    }
  }

  cout << "Goodbye..." << endl;
}

