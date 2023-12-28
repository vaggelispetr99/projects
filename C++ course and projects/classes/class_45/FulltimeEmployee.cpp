#include <string>
#include <iostream>

#include "FulltimeEmployee.h"

using std::string;
using std::cout;
using std::endl;

FulltimeEmployee::FulltimeEmployee(string name, float salary, float bonus_percent) :
    Employee("fulltime", name, salary), bonus_percent(bonus_percent) {
        cout << " Total salary: " << get_total_salary() << " Name: " << get_name() << endl;
}

float FulltimeEmployee::get_total_salary(float bonus) const {
    cout << "FulltimeEmployee: get_total_salary() " << get_name()  << "Bonus: "<< bonus << endl;

    return  get_salary() + get_salary() * bonus_percent * 0.01 + bonus;
}
FulltimeEmployee::~FulltimeEmployee(){
    cout << "Fulltime Employee object destructed: " << get_name() << " Total salary: " << get_total_salary() << endl;
}
