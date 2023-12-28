#pragma once
#include <string>

class Student{

    protected: // through protected child/derived classes can access these fields but external code not

    std::string name;
    float gpa;

    public:

    Student() = default;
    
    std::string get_name() const;
    void set_name(std::string n);

    float get_gpa() const;
    void set_gpa(float g);
};