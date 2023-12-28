#pragma once

#include <string>

class StringLonger {

    public:
        bool operator()(const std::string& first_string, 
                        const std::string& second_string) const {
            return first_string.length() > second_string.length() ? true : false;  
        }    
};

class StringShorter {

    public:
        bool operator()(const std::string& first_string, 
                        const std::string& second_string) const {
            return first_string.length() < second_string.length() ? true : false;  
        }    
};
