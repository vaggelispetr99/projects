#pragma once

#include "Shapes.h"

namespace shape_utilities {

    namespace circle {
        float get_perimeter(const shapes::circle::Circle& circle);

        float get_area(const shapes::circle::Circle& circle);
    }


    namespace square {
        float get_perimeter(const shapes::square::Square& square);

        float get_area(const shapes::square::Square& square);
    }
}
