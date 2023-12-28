#include <iostream>
#include <string>

#include "Container.h"

using std::cout;
using std::endl;
using std::string;

int main()
{
     Container<int> int_container {100};
     Container<float> float_container {112.997f};
     Container<string> string_container {"It always seems impossible until it's done."};

     Container<int> another_int_container {200};
     Container<float> another_float_container {1112.997f};
     Container<string> another_string_container {"zzzzzzz"};

     if (int_container < another_int_container) {
          cout << "int_container less than another_int_container" << endl;
     }

     if (another_float_container > float_container) {
          cout << "float_container another_float_container than float_container" << endl;
     }

     if (string_container < another_string_container) {
          cout << "string_container length less than another_string_container" << endl;
     }

     if (string_container > another_string_container) {
          cout << "string_container length greater than another_string_container" << endl;
     }

     return 0;
}
