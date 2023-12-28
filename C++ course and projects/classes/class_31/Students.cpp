#include<string>
#include<iostream>

#include "Students.h"

using std::string;
using std::cout;
using std::endl;

Student::Student(){
    cout << "No args constuctor" << endl;
}

Student::Student(std::string name) : name(name){
    cout << "One arg constuctor" << endl;
}

Student::Student(std::string name, float gpa) : name(name), gpa(gpa){
    cout << "Two args constuctor" << endl;
}

Student::Student(std::string name, float gpa, std::string major): name(name), gpa(gpa), major(major){
    cout << "Three args constuctor" << endl;
}

string Student::get_name() const{
    return name;
}

void Student::set_name(string n){
    name = n;
}

float Student::get_gpa() const{
    return gpa;
}

void Student::set_gpa(float g){
    gpa = g;
}

string Student::get_major() const{
    return major;
}

void Student::set_major(string n){
    major = n;
}