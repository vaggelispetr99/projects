#include <string>
#include <iostream>

#include "Department.h"

using std::string;
using std::cout;
using std::endl;
using std::invalid_argument;

Department::Department(string organization, string name, 
                       int num_employees, float salary_budget) :
    organization(organization),
    name(name), 
    num_employees(num_employees), 
    salary_budget(salary_budget) {
}

Department& Department::operator++() {
  cout << "Prefix increment: operator++() called" << endl;

  float avg_salary = salary_budget / num_employees;

  ++num_employees;
  salary_budget += avg_salary;

  return *this;
}


const Department Department::operator++(int) {
  cout << "Postfix increment: operator++(int) called" << endl;

  float avg_salary = salary_budget / num_employees;

  Department dept_copy(*this);

  ++num_employees;
  salary_budget += avg_salary;

  return dept_copy;
}
