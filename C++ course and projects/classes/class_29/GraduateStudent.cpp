#include<iostream>
#include <string>
#include "GraduateStudent.h"

using std::cout;
using std::endl;
using std::string;

bool GraduateStudent::has_scholarship() const{
    return scholarship;
}

void GraduateStudent::display_info() const{
    cout << "name: " << get_name() << " gpa: " << gpa << " major: " << major << " scholarship: " << std::boolalpha << scholarship << endl;
}

void GraduateStudent::set_scholarship(bool s){
    scholarship = s;
}
