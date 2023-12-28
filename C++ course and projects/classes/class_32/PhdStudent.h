#pragma once
#include <string>
#include "GraduateStudent.h"

class PhdStudent : public GraduateStudent{
    using GraduateStudent::GraduateStudent;
    private:

    std::string thesis;

    public:

    PhdStudent(std::string name, float gpa, std::string major, bool scholarship, std::string thesis);

    PhdStudent(const PhdStudent& phd_student);

    std::string get_thesis() const;
    void set_thesis(std::string thesis);

    void display_info() const;
    

    ~PhdStudent();

};