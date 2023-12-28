#include <string>
#include <iostream>

#include "GradStudent.h"
#include "UndergradStudent.h"

using std::string;
using std::cout;
using std::endl;

GradStudent::GradStudent(string name, bool teaching_assistantship) :
    Student(name), teaching_assistantship(teaching_assistantship) {
}

bool GradStudent::has_teaching_assistantship() const {
    return teaching_assistantship;
}

float GradStudent::compute_tuition() const {
    float tuition = 45000 * 2;
    if (teaching_assistantship) {
        tuition = tuition * 0.2;
    }

    return tuition;
}
