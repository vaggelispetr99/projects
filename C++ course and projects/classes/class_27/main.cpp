#include<iostream>
#include "Students.h"
#include "GraduateStudent.h"

using std::cout;
using std::endl;

int main(){
    Student student;
    GraduateStudent grad_student;

    student.set_name("Vagg");
    student.set_gpa(5.5f);
    student.set_major("Computer Sceince");

    grad_student.set_name_grad("Danae");
    grad_student.set_gpa_grad(4.5f);
    grad_student.set_major_grad("Computer Architecture");
    grad_student.set_scholarship(true);

    cout << "Student: " << typeid(student).name() << endl;
    cout << "Graduate Student: " << typeid(grad_student).name() << endl;

    cout << "Student is a base class of Graduate Student: " << std::boolalpha << std::is_base_of_v<Student, GraduateStudent> << endl;
    cout << "Graduate Student is a base class of Student: " << std::boolalpha << std::is_base_of_v<GraduateStudent, Student> << endl;

    cout << "Graduate Student name: " << grad_student.get_name_grad() << " Graduate Student GPA: " << grad_student.get_gpa_grad() << " Graduate Student major: " << grad_student.get_gpa_grad() << " Graduate Student scholaship: " << grad_student.has_scholarship() << endl;
    cout << "Student name: " << student.get_name() << " Student GPA: " << student.get_gpa() << " Student major: " << student.major << endl;

    grad_student.display_info();
    return 0;
}