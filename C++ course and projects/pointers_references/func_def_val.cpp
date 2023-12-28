#include<iostream>
#include<string>

using std::cout;
using std::endl;
using std::string;

//void greet(const string& greeting = "first"); //to the declaration
void greet(string greeting = "first"); //to the declaration
void greet_new(const string& name, const int& times = 2, const string& greeting = "Howdy"); //default values to the end
int main(){
    greet();
    greet("Hello Vagg Petr");
    greet("Hey Danae Kon");
    greet_new("Hello Geo Petr");
    greet_new("Hello Vagg Petr", 5);
    greet_new("Hey Danae Kon", 6, "Pink");


    return 0;
}

/*void greet(const string& greeting){
    cout<< greeting << endl;
}*/

void greet(string greeting){
    cout<< greeting << endl;
}

void greet_new(const string& name, const int& times, const string& greeting){
    for(int i =0; i < times; i++)
        cout<< greeting << " " << name << endl;
}