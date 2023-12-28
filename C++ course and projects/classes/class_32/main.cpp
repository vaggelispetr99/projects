#include<iostream>
#include "Students.h"
#include "GraduateStudent.h"
#include "PhdStudent.h"

using std::cout;
using std::endl;

int main(){
    Student student;
    Student* student_2 {&student};
    Student& student_3 = student;
    GraduateStudent grad_student;
    GraduateStudent grad_student_3("Pavlos", 56.52, "Physics");
    GraduateStudent grad_student_4("Ntinos", 8963.2, "Maths", true);
    GraduateStudent grad_student_5{grad_student_4};
    GraduateStudent* grad_student_6 {&grad_student_5};
    GraduateStudent& grad_student_7 = grad_student;
    cout << "--------------------" << endl;

    PhdStudent phd_student_3("Takis", 46.3, "Engineer");
    PhdStudent phd_student_4("Kwstas", 22.25, "Doctor", true);
    PhdStudent phd_student_5{phd_student_4};
    PhdStudent* phd_student_6 {&phd_student_5};
    PhdStudent& phd_student_7 = phd_student_4;

    Student* student_4 {&grad_student_3};
    Student* student_5 {&phd_student_3};

    Student& student_6 = grad_student_3;
    Student& student_7 = phd_student_4;
    student.set_name("Vagg");
    student.set_gpa(5.5f);
    student.set_major("Computer Sceince");

    grad_student.set_name("Danae");
    grad_student.set_gpa(4.5f);
    grad_student.set_major("Computer Architecture");
    grad_student.set_scholarship(true);

    cout << "Student: " << typeid(student).name() << endl;
    cout << "Graduate Student: " << typeid(grad_student).name() << endl;

    cout << "Student is a base class of Graduate Student: " << std::boolalpha << std::is_base_of_v<Student, GraduateStudent> << endl;
    cout << "Graduate Student is a base class of Student: " << std::boolalpha << std::is_base_of_v<GraduateStudent, Student> << endl;

    cout << "Graduate Student name: " << grad_student.get_name() << " Graduate Student GPA: " << grad_student.get_gpa() << " Graduate Student major: " << grad_student.get_major() << " Graduate Student scholaship: " << grad_student.has_scholarship() << endl;
    cout << "Student name: " << student.get_name() << " Student GPA: " << student.get_gpa() << " Student major: " << student.get_major() << endl;
    cout << "--------------------" << endl;
    grad_student.display_info();
    cout << "--------------------" << endl;
    phd_student_5.display_info();
    cout << "--------------------" << endl;
    student.display_info();
    cout << "--------------------" << endl;
    grad_student.get_gpa();
    grad_student.set_gpa(500);
    cout << grad_student_6->get_name() << endl;
    cout << grad_student_6->has_scholarship() << endl;
    cout << phd_student_6->get_name() << endl;
    cout << phd_student_6->get_thesis() << endl;
    cout << phd_student_6->has_scholarship() << endl;
    cout << student_2->get_major() << endl;
    cout << student_4->get_major() << endl;
    cout << student_5->get_major() << endl;

    cout << grad_student_7.get_name() << endl;
    cout << grad_student_7.has_scholarship() << endl;
    cout << phd_student_7.get_name() << endl;
    cout << phd_student_7.get_thesis() << endl;
    cout << phd_student_7.has_scholarship() << endl;
    cout << student_3.get_major() << endl;
    cout << student_6.get_major() << endl;
    cout << student_7.get_major() << endl;




    return 0;
}