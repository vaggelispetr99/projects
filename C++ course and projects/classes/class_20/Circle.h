#pragma once

namespace shapes {
    class Circle {
        private:
            float radius;
        
        public:
            Circle(float r);

            float get_radius() const;
    };
}
