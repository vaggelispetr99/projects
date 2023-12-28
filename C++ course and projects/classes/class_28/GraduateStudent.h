#pragma once
#include <string>
#include "Students.h"

class GraduateStudent : private Student{
    private:

    bool scholarship;

    public:

    GraduateStudent() = default;

    bool has_scholarship() const;
    void set_scholarship(bool s);

    void display_info() const;

    std::string get_name_grad() const;
    void set_name_grad(std::string n);

    float get_gpa_grad() const;
    void set_gpa_grad(float g);

    std::string get_major_grad() const;
    void set_major_grad(std::string n);
};