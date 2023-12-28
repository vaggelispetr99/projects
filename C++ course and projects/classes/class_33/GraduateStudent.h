#pragma once
#include <string>
#include "Students.h"

class GraduateStudent : private Student{
    private:
    using Student::Student;
    bool scholarship;

    public:

    using Student::get_name;
    using Student::set_name;
    using Student::get_gpa;
    using Student::set_gpa;
    using Student::get_major;
    using Student::set_major;

    
    GraduateStudent(std::string name, float gpa, std::string major, bool scholarship);

    bool has_scholarship() const;
    void set_scholarship(bool s);

    void display_info() const;

};