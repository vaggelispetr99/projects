#include <iostream>

#include "Student.h"

using std::cout;
using std::endl;

int main()
{
  Student robert("Robert", 3.3f, "Chemistry");
  Student caroline("Caroline", 3.9f, "Math");

  Student* vagg = new Student("Vagg", 3.3f, "Physics");
  delete vagg;
  vagg = nullptr;

  cout << "End of main..." << endl;

  return 0;
}
