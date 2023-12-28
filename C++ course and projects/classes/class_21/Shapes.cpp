#include <iostream>

#include "Shapes.h"

using std::cout;
using std::endl;

namespace shapes {

    namespace circle {
        Circle::Circle(float r) : radius(r) {
        }

        float Circle::get_radius() const {
            return radius;
        }
    }

    namespace square {
        Square::Square(float s) : side(s) {
        }

        float Square::get_side() const {
            return side;
        }
    }

}
