#pragma once
#include <string>

class Student{
    private:
    std::string name;
    float gpa;
    std::string major;

    public:

    Student();
    
    std::string get_name() const;
    void set_name(std::string n);

    float get_gpa() const;
    void set_gpa(float g);

    std::string get_major() const;
    void set_major(std::string n);
};