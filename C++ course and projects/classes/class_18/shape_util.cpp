#include "Circle.h"
#include "constants.h"

float get_perimeter(const Circle& circle) {
    return 2 * pi * circle.get_radius();
}

float get_area(const Circle& circle) {
    return pi * circle.get_radius() * circle.get_radius();
}

