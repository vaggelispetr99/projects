#include <string>
#include <iostream>

#include "UndergradStudent.h"

using std::string;
using std::cout;
using std::endl;

UndergradStudent::UndergradStudent(string name, string major) :
    Student(name), major(major) {
}

string UndergradStudent::get_major() const {
    return major;
}

float UndergradStudent::compute_tuition() const {
    return 60000 * 4;
}
