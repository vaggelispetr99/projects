#include<iostream>

#include "GraduateStudent.h"

using std::cout;
using std::endl;


bool GraduateStudent::has_scholarship() const{
    return scholarship;
}

void GraduateStudent::display_info() const{
    cout << "name: " << name << " gpa: " << gpa << " scholarship: " << std::boolalpha << scholarship << endl;
}

void GraduateStudent::set_scholarship(bool s){
    scholarship = s;
}