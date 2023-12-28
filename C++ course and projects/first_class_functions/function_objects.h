#pragma once

#include <string>

class StringUppercase {

    public:
        std::string operator()(const std::string& input_string) const {
            std::string uppercase_string;
            for (const char& ch : input_string) {
                uppercase_string += ::toupper(ch);
            }

            return uppercase_string;
        }    
};

class StringLowercase {

    public:
        std::string operator()(const std::string& input_string) const {
            std::string lowercase_string;
            for (const char& ch : input_string) {
                lowercase_string += ::tolower(ch);
            }

            return lowercase_string;
        }    
};
