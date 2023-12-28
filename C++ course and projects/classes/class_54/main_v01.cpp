#include <iostream>
#include "GradStudent.h"
#include "UndergradStudent.h"
#include "PhdStudent.h"

using std::cout;
using std::endl;

void display_grad_student_details(const Student& student) {
    const GradStudent& grad_student = (GradStudent&) student;

    cout <<"**************************" << endl;
    cout << "Name: " << grad_student.get_name() 
         << ", has teaching assistantship: " << std::boolalpha 
         << grad_student.has_teaching_assistantship() 
         << ", tuition: " << grad_student.compute_tuition() << endl << endl;
}


void display_grad_student_details_pointers(const Student* student) {
    const GradStudent* grad_student = (GradStudent*) student;

    cout <<"**************************" << endl;
    cout << "Name: " << grad_student->get_name() 
         << ", has teaching assistantship: " << std::boolalpha 
         << grad_student->has_teaching_assistantship() 
         << ", tuition: " << grad_student->compute_tuition() << endl << endl;
}

void display_grad_student_details_static_c_plus_plus(const Student& student) {
    const GradStudent& grad_student = static_cast<const GradStudent&> (student);

    cout <<"**************************" << endl;
    cout << "Name: " << grad_student.get_name() 
         << ", has teaching assistantship: " << std::boolalpha 
         << grad_student.has_teaching_assistantship() 
         << ", tuition: " << grad_student.compute_tuition() << endl << endl;
}

void display_grad_student_details_static_c_plus_plus_pointers(const Student* student) {
    const GradStudent* grad_student = static_cast<const GradStudent*> (student);

    cout <<"**************************" << endl;
    cout << "Name: " << grad_student->get_name() 
         << ", has teaching assistantship: " << std::boolalpha 
         << grad_student->has_teaching_assistantship() 
         << ", tuition: " << grad_student->compute_tuition() << endl << endl;
}

void display_grad_student_details_simple(const GradStudent& grad_student) {

    cout <<"**************************" << endl;
    cout << "Name: " << grad_student.get_name() 
         << ", has teaching assistantship: " << std::boolalpha 
         << grad_student.has_teaching_assistantship() 
         << ", tuition: " << grad_student.compute_tuition() << endl << endl;
}


int main()
{
    GradStudent linda {"Linda", true};
    GradStudent terry {"Terry", false};

    display_grad_student_details(linda);
    display_grad_student_details(terry);

    PhdStudent vagg {"Vagg", true, false};
    PhdStudent dan {"Danae", false, true};

    display_grad_student_details(vagg);
    display_grad_student_details(dan);

    GradStudent John {"John", false};
    PhdStudent George {"George", true, false};

    display_grad_student_details_pointers(&John);
    display_grad_student_details_pointers(&George);

    GradStudent chris {"Chris", false};
    PhdStudent alex {"Alex", true, false};

    display_grad_student_details_static_c_plus_plus(chris);
    display_grad_student_details_static_c_plus_plus(alex);

    GradStudent pola {"Pola", false};
    PhdStudent maria {"Maria", true, false};

    display_grad_student_details_static_c_plus_plus_pointers(&pola);
    display_grad_student_details_static_c_plus_plus_pointers(&maria);

    UndergradStudent klelia {"Klelia", "Computer Sceince"};

    GradStudent klelia_grad_1 {klelia};
    GradStudent klelia_grad_2 = static_cast<GradStudent>(klelia);

    display_grad_student_details_simple(static_cast<GradStudent>(klelia));
}

