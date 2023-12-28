#pragma once
#include <string>

class Employee {
  private:
    std::string employee_type;
    std::string name;
    float salary;

  public:
    Employee(std::string employee_type, std::string name, float salary);

    std::string get_name() const;

    float get_salary() const;

    float virtual get_total_salary(float bonus_percent = 2) const; // not a good practise to have default values in virtual functions' arguments as they are statically dispatched

    virtual ~Employee();
    //virtual ~Employee() = default; //another option
    
};
