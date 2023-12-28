#pragma once
#include <string>

#include "Program.h"

class Student {
  private:
    std::string name;
    float gpa;
    Program* program;

  public:

    Student(std::string name, float gpa, std::string major);

    std::string get_name() const;

    float get_gpa() const;

    std::string get_major() const;

    ~Student();
};
