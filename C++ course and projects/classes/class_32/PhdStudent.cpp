#include<iostream>
#include <string>
#include "GraduateStudent.h"
#include "PhdStudent.h"

using std::cout;
using std::endl;
using std::string;

PhdStudent::PhdStudent(std::string name, float gpa, std::string major, bool scholarship, string thesis) : GraduateStudent(name, gpa, major,scholarship), thesis(thesis){
    cout << "One arg constuctor phd" << endl;
}

PhdStudent::PhdStudent(const PhdStudent& phd_student) : GraduateStudent(phd_student), thesis(phd_student.thesis){
    cout << "Copy constuctor phd" << endl;
}

string PhdStudent::get_thesis() const{
    return thesis;
}

void PhdStudent::display_info() const{
    cout << "name: " << get_name() << " gpa: " << get_gpa() << " major: " << get_major() << " scholarship: " << std::boolalpha << has_scholarship() << " thesis: " << get_thesis() << endl;
}

void PhdStudent::set_thesis(string thesis){
    this->thesis = thesis;
}

PhdStudent::~PhdStudent(){
    cout << "Destructor phd: " << get_name() << endl;

}
