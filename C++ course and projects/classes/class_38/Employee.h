#pragma once
#include <string>

class Employee {
  private:
    std::string employee_type;
    std::string name;
    float salary;

  public:
    Employee(std::string employee_type, std::string name, float salary);

    std::string get_employee_type() const;

    std::string get_name() const;

    float get_salary() const;

    float virtual get_total_salary() const;

    void display_total_salary() const;
};
