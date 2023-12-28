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

string GraduateStudent::get_name_grad() const{
    return this->get_name();
}

void GraduateStudent::set_name_grad(string n){
    this->set_name(n);
}

float GraduateStudent::get_gpa_grad() const{
    return this->gpa;
}

void GraduateStudent::set_gpa_grad(float g){
    this->gpa = g;
}

string GraduateStudent::get_major_grad() const{
    return this->major;
}

void GraduateStudent::set_major_grad(string n){
   this->major = n;
}