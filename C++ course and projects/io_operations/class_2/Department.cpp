#include <string>
#include <iostream>

#include "Department.h"

using std::string;
using std::cout;
using std::endl;

Department::Department(string name, int num_employees, float salary_budget) :
    name(name), 
    num_employees(num_employees), 
    salary_budget(salary_budget) {
}

