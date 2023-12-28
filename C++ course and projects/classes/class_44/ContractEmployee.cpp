#include <string>
#include <iostream>

#include "ContractEmployee.h"

using std::string;
using std::cout;
using std::endl;

ContractEmployee::ContractEmployee(string name, float salary,
        int overtime_hours, float overtime_rate) :
    Employee("contract", name, salary), 
    overtime_hours(overtime_hours),
    overtime_rate(overtime_rate) {
}

int ContractEmployee::get_overtime_hours() const {
    return overtime_hours;
}

float ContractEmployee::get_overtime_rate() const {
    return overtime_rate;
}

float ContractEmployee::get_total_salary() const {
    cout << "ContractEmployee: get_total_salary() " << get_name() << endl;

    return get_salary() + overtime_hours * overtime_rate;
}

const ContractEmployee& ContractEmployee::increase_salary_and_return_this() { // Employee class is the base class of the ContractEmployee class and so we can return an reference (or a pointer) to the ContractEmployee besides Employee and dynamicall dispatch of functions still work (this is a virtual function)
    overtime_rate = overtime_rate + 100;
    return *this;
}
