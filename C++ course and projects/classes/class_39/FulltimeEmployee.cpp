#include <string>
#include <iostream>

#include "FulltimeEmployee.h"

using std::string;
using std::cout;
using std::endl;

FulltimeEmployee::FulltimeEmployee(string name, float salary, float bonus_percent) :
    Employee("fulltime", name, salary), bonus_percent(bonus_percent) {
}

float FulltimeEmployee::get_bonus_percent() const {
    return bonus_percent;
}

float FulltimeEmployee::get_total_salary() const {
    cout << "FulltimeEmployee: get_total_salary() " << get_name()  << endl;

    return  get_salary() + get_salary() * bonus_percent * 0.01;
}

const FulltimeEmployee& FulltimeEmployee::increase_salary_and_return_this() { // Employee class is the base class of the FulltimeEmployee class and so we can return an reference (or a pointer) to the FulltimeEmployee besides Employee and dynamicall dispatch of functions still work (this is a virtual function)
    bonus_percent = bonus_percent + 4.5;

    return *this;
}
