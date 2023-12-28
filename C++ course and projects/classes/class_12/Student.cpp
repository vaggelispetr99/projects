#include <string>
#include <iostream>

#include "Student.h"

using std::string;
using std::cout;
using std::endl;

Student::Student(string name, float gpa, string major) :
    name(name), gpa(gpa), major(major) {

    // map.count() can only return 0 or 1    
    if (student_major_map.count(major) == 0) {
        student_major_map[major] = 0;
    }
    student_major_map[major]++;
}

string Student::get_name() const {
    return name;
}

float Student::get_gpa() const {
    return gpa;
}

string Student::get_major() const {
    return major;
}

int Student::get_major_count(string major) {
    return Student::student_major_map[major];
}

void Student::derigister_std_from_major(const Student& student){
    student_major_map[student.major]--;
}

Student::~Student(){
    cout << "Destructor" << endl;
}