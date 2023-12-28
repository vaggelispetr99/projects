#include <iostream>

#include "Circle.h"

using std::cout;
using std::endl;

namespace shapes {
    Circle::Circle(float r) : radius(r) {
    }

    float Circle::get_radius() const {
        return radius;
    }
}
