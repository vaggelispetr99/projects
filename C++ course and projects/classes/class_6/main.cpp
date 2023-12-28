#include <iostream>

#include "Circle.h"

using std::cout;
using std::endl;

int main()
{
  Circle first_circle(10.0f);
  Circle second_circle(12.0f);

  cout << "First circle's area: " << first_circle.get_area() << endl;
  cout << "Second circle's area: " << second_circle.get_area() << endl;

  cout << "---------------" << endl;

  cout << "Is first_circle larger than second_circle?: " 
       << std::boolalpha << first_circle.is_larger(second_circle) << endl;
  cout << "Is second_circle larger than first_circle?: " 
       << std::boolalpha << second_circle.is_larger(first_circle) << endl;

  return 0;
}