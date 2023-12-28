#include<string>
#include<iostream>

#include "Students.h"

using std::string;
using std::cout;
using std::endl;

Student::Student(){
    cout << "No args constuctor" << endl;
}

Student::Student(std::string name, float gpa, std::string major): name(name), gpa(gpa), major(major){
    cout << "Three args constuctor" << endl;
}

Student::Student(const Student& student): name(student.name), gpa(student.gpa), major(student.major){
    cout << "Copy constuctor" << endl;
}

string Student::get_name() const{
    return name;
}

void Student::set_name(string n){
    name = n;
}

float Student::get_gpa() const{
    cout << "Student get" << endl;
    return gpa;
}

void Student::set_gpa(float g){
    cout << "Student set" << endl;
    gpa = g;
}

string Student::get_major() const{
    return major;
}

void Student::set_major(string n){
    major = n;
}

Student::~Student(){
    cout << "Destuctor: " << name << endl;
}

void Student::display_info() const{
    cout << "name: " << get_name() << " gpa: " << get_gpa() << " major: " << get_major() << endl;
}