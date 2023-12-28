#include<iostream>
#include <string>
#include "GraduateStudent.h"

using std::cout;
using std::endl;
using std::string;

GraduateStudent::GraduateStudent(){
    cout << "No args constuctor grad" << endl;
}

GraduateStudent::GraduateStudent(bool scholarship) : scholarship(scholarship){
    cout << "One arg constuctor grad" << endl;
}

GraduateStudent::GraduateStudent(bool scholarship, std::string name) : scholarship(scholarship), Student(name){
    cout << "One arg constuctor grad" << endl;
}

GraduateStudent::GraduateStudent(bool scholarship, std::string name, float gpa) : scholarship(scholarship), Student(name, gpa){
    cout << "One arg constuctor grad" << endl;
}

GraduateStudent::GraduateStudent(bool scholarship, std::string name, float gpa, std::string major) : scholarship(scholarship), Student(name, gpa, major){
    cout << "One arg constuctor grad" << endl;
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
