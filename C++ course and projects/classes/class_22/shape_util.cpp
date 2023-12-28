#include "Shapes.h"
#include "constants.h"
#include "shape_util.h"

using shapes::circle::Circle;
using shapes::square::Square;
using constants::pi;

namespace shape_utilities {

    namespace circle {
        float get_perimeter(const Circle& circle) {
            return 2 * pi * circle.get_radius();
        }

        float get_area(const Circle& circle) {
            return pi * circle.get_radius() * circle.get_radius();
        }
    }

    namespace square {
        float get_perimeter(const Square& square) {
            return 4 * square.get_side();
        }

        float get_area(const Square& square) {
            return square.get_side() * square.get_side();
        }
    }
}

