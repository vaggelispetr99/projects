#include<iostream>
#include <string>
#include "GraduateStudent.h"

using std::cout;
using std::endl;
using std::string;

GraduateStudent::GraduateStudent(std::string name, float gpa, std::string major, bool scholarship) : Student(name, gpa, major), scholarship(scholarship){
    cout << "One arg constuctor grad" << endl;
}

GraduateStudent::GraduateStudent(const GraduateStudent& grad_student) : Student(grad_student), scholarship(grad_student.scholarship){
    cout << "Copy constuctor grad" << endl;
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

GraduateStudent::~GraduateStudent(){
    cout << "Destructor grad: " << get_name() << endl;

}

float GraduateStudent::get_gpa() const{
    cout << "Grad Student get" << endl;
    return Student::get_gpa();
}

void GraduateStudent::set_gpa(float g){
    cout << "Grad Student get" << endl;
    Student::set_gpa(g);
}
