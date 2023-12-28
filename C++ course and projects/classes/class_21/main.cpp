#include <iostream>

#include "Shapes.h"
#include "shape_util.h"

using std::cout;
using std::endl;

using shapes::circle::Circle;
using shapes::square::Square;

int main()
{
  Circle first_circle(10.0f);
  
  cout << "Perimeter of circle: " << shape_utilities::circle::get_perimeter(first_circle) << endl;
  cout << "Area of circle: " << shape_utilities::circle::get_area(first_circle) << endl;

  Square first_square(10.0f);
  
  cout << "Perimeter of square: " << shape_utilities::square::get_perimeter(first_square) << endl;
  cout << "Area of square: " << shape_utilities::square::get_area(first_square) << endl;

  return 0;
}
