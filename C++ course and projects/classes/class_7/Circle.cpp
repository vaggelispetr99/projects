#include <iostream>

#include "Circle.h"

using std::cout;
using std::endl;

Circle::Circle(float r) : radius(r) {
    cout << "Constructing circle with radius: " << radius << endl;
}

bool Circle::is_larger(Circle other_circle) {
    if (get_area() > other_circle.get_area()) {
        return true;
    }

    return false;
}
