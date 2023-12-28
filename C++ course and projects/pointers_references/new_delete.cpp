#include <iostream>
#include <string>

using std::cout;
using std::endl;
using std::string;

class person{
    private:
        string name;
    
    public:

    person(){
        cout << "constructor " << endl;
    } //constructor

    ~person(){
        cout << "destructor " << endl;
    } //destructor
};

int main(){
    cout << "inside" << endl;
    person* person_ptr {new person{}};
    cout << "middle" << endl;
    delete person_ptr;
    cout << "middle_2" << endl;
    const int temp = 3;
    person* person_new = new person[3] {};
    cout << "outside" << endl;
    delete[] person_new;
    person_ptr = nullptr;
    person_new = nullptr;
    cout <<"ending" << endl;
}