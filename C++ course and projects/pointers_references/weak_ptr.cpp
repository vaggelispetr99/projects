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
using std::weak_ptr;

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
  shared_ptr<person_new> john {make_shared<person_new>("John")};
  auto person_new_ptr = john;

  cout << "Person: " << john->get_name() << endl;

  weak_ptr<person_new> wp_person = john;
  auto sp_temp = wp_person.lock(); 
  if (sp_temp){
    cout << "NOT NULL" << endl;
    cout << "Person: " << sp_temp->get_name() << endl;
  }else{
    cout << "NULL" << endl;
  }
  person_new_ptr.reset();
  sp_temp.reset();
  john.reset(new person_new("Vagg"));
  if (auto sp_temp_2 = wp_person.lock()){
    cout << "NOT NULL" << endl;
    cout << "Person: " << sp_temp_2->get_name() << endl;
  }else{
    cout << "NULL" << endl;
  }
  if (wp_person.expired()){
    cout << "Expired" << endl;
  }
  return 0;
}