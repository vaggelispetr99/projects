#include <string>
#include <iostream>

#include "Employee.h"

using std::string;
using std::cout;
using std::endl;

Employee::Employee(string employee_type, string name, float salary) :
        employee_type(employee_type), name(name), salary(salary) {
            cout << " Total salary: " << get_total_salary() << " Name: " << get_name() << endl;
}

string Employee::get_name() const {
    return name;
}

float Employee::get_salary() const {
    return salary;
}

float Employee::get_total_salary(float bonus_percent) const {
    cout << "Employee: get_total_salary() " << name <<  "Bonus: "<< bonus_percent << endl;
    return salary + bonus_percent;
}

Employee::~Employee(){
    cout << "Employee object destructed: " << get_name() << " Total salary: " << get_total_salary() << endl;
}
