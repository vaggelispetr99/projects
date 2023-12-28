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
  if (this->organization != other.get_organization()) {
     throw invalid_argument("Only departments within the same organization can be merged");
  }

  Department dept(this->organization,  
    this->get_name() + " + " + other.get_name(),
    this->get_num_employees() + other.get_num_employees(),
    this->get_salary_budget() + other.get_salary_budget()
  );

  return dept;      
}

Department Department::operator-(const Department& other) const {
  if (this->organization != other.get_organization()) {
     throw invalid_argument("Only departments within the same organization can be split");
  }

  if (this->get_num_employees() < other.get_num_employees()) {
     throw invalid_argument("To few employees to split");
  }

  if (this->get_salary_budget() < other.get_salary_budget()) {
     throw invalid_argument("To little salary budget to split");
  }

  Department dept(this->organization,  
    this->get_name() + " - " + other.get_name(),
    this->get_num_employees() - other.get_num_employees(),
    this->get_salary_budget() - other.get_salary_budget()
  );

  return dept;      
}

