#include <string>
#include <iostream>

#include "PhdStudent.h"

using std::string;
using std::cout;
using std::endl;

PhdStudent::PhdStudent(string name, bool teaching_assistantship, 
                       bool research_assistantship) :
    GradStudent(name, teaching_assistantship), 
    research_assistantship(research_assistantship) {
}

bool PhdStudent::has_research_assistantship() const {
    return research_assistantship;
}

float PhdStudent::compute_tuition() const {
    float tuition = 35000 * 6;
    
    if (has_teaching_assistantship()) {
        tuition = tuition * 0.7;
    }

    if (research_assistantship) {
        tuition = tuition * 0.05;
    }

    return tuition;
}
