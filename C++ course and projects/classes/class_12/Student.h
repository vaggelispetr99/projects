#pragma once
#include <string>
#include <map>

class Student {
  private:
    static inline std::map<std::string, int> student_major_map {};

    std::string name;
    float gpa;
    std::string major;

  public:

    Student(std::string name, float gpa, std::string major);

    std::string get_name() const;

    float get_gpa() const;

    std::string get_major() const;

    static int get_major_count(std::string major);

    static void derigister_std_from_major(const Student& student);

    ~Student();
};
