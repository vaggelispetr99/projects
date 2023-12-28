#include <iostream>

#include "Circle.h"
#include "shape_util.h"

using std::cout;
using std::endl;

int main()
{
  shapes::Circle first_circle(10.0f);
  
  cout << "Perimeter of circle: " << shape_utilities::get_perimeter(first_circle) << endl;
  cout << "Area of circle: " << shape_utilities::get_area(first_circle) << endl;

  return 0;
}
