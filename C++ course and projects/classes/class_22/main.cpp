#include <iostream>

#include "Shapes.h"
#include "shape_util.h"

using std::cout;
using std::endl;

using shapes::circle::Circle;
using shapes::square::Square;

namespace circle_utilities = shape_utilities::circle;
namespace square_utilities = shape_utilities::square;

int main()
{
  Circle first_circle(10.0f);
  
  cout << "Perimeter of circle: " << circle_utilities::get_perimeter(first_circle) << endl;
  cout << "Area of circle: " << circle_utilities::get_area(first_circle) << endl;

  Square first_square(10.0f);
  
  cout << "Perimeter of square: " << square_utilities::get_perimeter(first_square) << endl;
  cout << "Area of square: " << square_utilities::get_area(first_square) << endl;

  return 0;
}
