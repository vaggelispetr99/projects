#include <string>
#include <iostream>

#include "Student.h"

using std::string;
using std::cout;
using std::endl;


Student::Student(string name, float gpa, string major) :
    name(name), gpa(gpa) {

    cout << "Student constructor called: " << name << endl;
    program = new Program(major);
}

string Student::get_name() const {
    return name;
}

float Student::get_gpa() const {
    return gpa;
}

string Student::get_major() const {
    return program->get_major();
}

Student::~Student() {
    delete program;
    program = nullptr;
    cout << "Student destructor called: " << name << endl;
}
