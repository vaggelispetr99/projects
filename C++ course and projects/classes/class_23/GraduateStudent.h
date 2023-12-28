#pragma once

#include "Students.h"

class GraduateStudent : public Student{
    public:
    bool scholarship;

    GraduateStudent() = default;

    bool has_scholarship() const;

    void display_info() const;
};