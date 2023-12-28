#include<iostream>
#include <string>
#include "GraduateStudent.h"

using std::cout;
using std::endl;
using std::string;

GraduateStudent::GraduateStudent(){
    cout << "No args constuctor GraduateStudent" << endl;
}

bool GraduateStudent::has_scholarship() const{
    return scholarship;
}

void GraduateStudent::display_info() const{
    cout << "name: " << get_name() << " gpa: " << get_gpa() << " major: " << get_major() << " scholarship: " << std::boolalpha << scholarship << endl;
}

void GraduateStudent::set_scholarship(bool s){
    scholarship = s;
}
