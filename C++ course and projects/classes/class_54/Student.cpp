#include <string>

#include "Student.h"

using std::string;

Student::Student(string name) : name(name) {
}

string Student::get_name() const {
    return name;
}
