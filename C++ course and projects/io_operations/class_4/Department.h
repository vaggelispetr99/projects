#pragma once
#include <iostream>
#include <iomanip>
#include <string>

class Department {
  private:
    std::string name;
    int num_employees;
    float salary_budget;

  public:
    Department() = default;

    Department(std::string name, int num_employees, float salary_budget);

    std::string get_name() const {
      return name;
    }

    int get_num_employees() const {
      return num_employees;
    }

    float get_salary_budget() const {
      return salary_budget;
    }
};
