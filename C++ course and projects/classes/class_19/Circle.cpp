#include <iostream>

#include "Circle.h"

using std::cout;
using std::endl;

shapes::Circle::Circle(float r) : radius(r) {
}

float shapes::Circle::get_radius() const {
    return radius;
}
