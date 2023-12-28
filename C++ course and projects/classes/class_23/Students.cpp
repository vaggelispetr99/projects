#include<string>
#include<iostream>

#include "Students.h"

using std::string;
using std::cout;
using std::endl;


string Student::get_name() const{
    return name;
}

float Student::get_gpa() const{
    return gpa;
}