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

Department Department::operator+(const Department& other) const {

  Department dept_copy(*this);

  dept_copy += other;

  return dept_copy;
}

Department& Department::operator+=(const Department& other) {
  if (this->organization != other.get_organization()) {
     throw invalid_argument("Only departments within the same organization can be merged");
  }

  this->name = this->name + " + " + other.get_name();
  this->num_employees = this->num_employees + other.get_num_employees();
  this->salary_budget = this->salary_budget + other.get_salary_budget();

  return *this;
}
