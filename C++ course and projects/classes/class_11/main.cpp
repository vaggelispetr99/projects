#include <iostream>

#include "Student.h"

using std::cout;
using std::endl;

int main()
{
  Student robert("Robert", 3.3f, "History");
  cout << Student::student_count << endl;
  Student edward("Edward", 3.6f, "Political Science");
  cout << Student::student_count << endl;
  Student caroline("Caroline", 3.9f, "Math");
  cout << Student::student_count << endl;
  Student george("George", 2.8f, "Chemistry");
  cout << Student::student_count << endl;
  Student jackie("Jackie", 3.1f, "Physics");
  cout << Student::student_count << endl;
  
  return 0;
}
