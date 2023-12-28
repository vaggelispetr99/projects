#pragma once
#include <string>

class Department {
  private:
    std::string organization;
    std::string name;
    int num_employees;
    float salary_budget;

  public:
    Department(std::string organization, std::string name, 
               int num_employees, float salary_budget);

    std::string get_organization() const {
      return organization;
    }

    std::string get_name() const {
      return name;
    }

    int get_num_employees() const {
      return num_employees;
    }

    float get_salary_budget() const {
      return salary_budget;
    }

    Department operator+(const Department& other) const;

    Department& operator+=(const Department& other);

    void show() const {
      std::cout << "------------" << name 
                << " (" << organization << ") " 
                << "---------------" << std::endl;
      std::cout << "Employees: " << num_employees 
                << " salary budget: " << salary_budget 
                << std::endl << std::endl;
    }
};
