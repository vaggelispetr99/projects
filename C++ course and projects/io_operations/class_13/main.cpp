#include <iostream>
#include <exception>

#include "Firefox.h"

using std::cin;
using std::cout;
using std::endl;
using std::exception;

int main()
{
  try {

    Firefox firefox("Firefox");

  } catch (exception& ex) {
    cout << "An exception occurred initializing the browser! " << ex.what() << endl;
  }
}
