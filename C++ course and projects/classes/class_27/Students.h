#pragma once
#include <string>

class Student{
    private:
    std::string name;

    protected: // through protected child/derived classes can access these fields but external code not

    float gpa;

    public:
    std::string major;

    Student() = default;
    
    std::string get_name() const;
    void set_name(std::string n);

    float get_gpa() const;
    void set_gpa(float g);

    std::string get_major() const;
    void set_major(std::string n);
};