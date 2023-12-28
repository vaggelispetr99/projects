#include <iostream>
#include <memory>
#include <string>
#include <algorithm>
#include <random>

using std::cout;
using std::endl;
using std::string;
using std::shared_ptr;
using std::make_shared;

class person_new{
    private:
        string name;
    
    public:

    person_new(){
        cout << "constructor " << endl;
    } //constructor

    person_new(string n) : name(n){
        cout << "constructor " << name << endl;
    } //constructor

    string get_name(){return name;}
    void set_name(string n){name = n;}

    ~person_new(){
        cout << "destructor " << name << endl;
    } //destructor
};

int main()
{
  // Pre C++14 style of initializing shared pointers
  shared_ptr<string> revenue_ptr_1 {new string {"Vagg"}};

  // Modern style of initializing shared pointers - this function
  // prevents some subtle memory leaks
  shared_ptr<string> revenue_ptr_2 {make_shared<string>("John")};

  // Compact modern style of initializing shared pointers
  auto revenue_ptr_3 {make_shared<string>("Dan")};
  auto person_new_ptr {make_shared<person_new>()};
  shared_ptr<person_new> person_new_ptr_2 {make_shared<person_new>("John")};
  auto person_new_ptr_2_copy = person_new_ptr_2;
  cout << "Revenue 1: " << *revenue_ptr_1 << endl;
  cout << "Revenue 2: " << *revenue_ptr_2 << endl;
  cout << "Revenue 3: " << *revenue_ptr_3 << endl;
  cout << "Person: " << person_new_ptr->get_name() << endl;
  cout << "Person_2: " << person_new_ptr_2->get_name() << endl;
  cout << "Person_2 Copy: " << person_new_ptr_2_copy->get_name() << endl;

  person_new_ptr_2_copy->set_name("Koulis");
  cout << "Person_2: " << person_new_ptr_2->get_name() << endl;
  cout << "Person_2 Copy: " << person_new_ptr_2_copy->get_name() << endl;

  auto chris {make_shared<person_new>("Chris")};
  shared_ptr<person_new> maria {make_shared<person_new>("Maria")};
  shared_ptr<person_new> person_1 = nullptr;
  shared_ptr<person_new> person_2 = nullptr;
  person_1 = chris;
  person_2 = maria;
  cout << "Person_1: " << person_1->get_name() << endl;
  cout << "Person_2: " << person_2->get_name() << endl;
  {
    shared_ptr<person_new> person_3 = chris;
    cout << "Person_test: " << person_3->get_name() << endl;
  }
  person_2 = chris;
  cout << "Person_1: " << person_1->get_name() << endl;
  cout << "Person_2: " << person_2->get_name() << endl;
  person_1 = nullptr;
  person_2 = nullptr;

  return 0;
}