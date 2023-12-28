#include "Circle.h"
#include "constants.h"
#include "shape_util.h"

using shapes::Circle;
using constants::pi;

namespace shape_utilities {
    float get_perimeter(const Circle& circle) {
        return 2 * pi * circle.get_radius();
    }

    float get_area(const Circle& circle) {
        return pi * circle.get_radius() * circle.get_radius();
    }
}

