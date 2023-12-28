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

    friend std::istream& operator>>(std::istream& stream, Department& department);
};

inline std::ostream& operator<<(std::ostream& stream, const Department& department) {
  stream << department.get_name() << std::endl
         << department.get_num_employees() << " "
         << std::fixed << std::setprecision(2) << department.get_salary_budget() << std::endl;

  return stream;
}

inline std::istream& operator>>(std::istream& stream, Department& department) {
  std::getline(stream, department.name);
  stream >> department.num_employees >> department.salary_budget;

  // Ignore the newline
  stream.ignore();

  return stream;
}
