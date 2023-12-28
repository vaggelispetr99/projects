#pragma once

class MultiplyBy {
    private:
        int factor;

    public:
        MultiplyBy(int factor) : factor(factor) {
        }

        double operator()(const double& input_number) const {
            return factor * input_number;
        }
};

class DivideBy {
    private:
        int divisor;

    public:
        DivideBy(int divisor) : divisor(divisor) {
        }

        double operator()(const double& input_number) const {
            return input_number / divisor;
        }
};
