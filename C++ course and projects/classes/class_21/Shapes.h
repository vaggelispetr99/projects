#pragma once

namespace shapes {

    namespace circle {

        class Circle {
            private:
                float radius;
            
            public:
                Circle(float r);

                float get_radius() const;
        };
    }

    namespace square {

        class Square {
            private:
                float side;
            
            public:
                Square(float s);

                float get_side() const;
        };
    }
}
