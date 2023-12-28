#include <iostream>
#include <string>

using std::cout;
using std::endl;
using std::string;

struct Person {
  string name;

  Person(string n) : name(n) {}
};

int main(){
    int temp = 100;
    int& temp_ref = temp;

    cout << "Real: " << temp << endl;
    cout << "Reference: " << temp_ref << endl;

    temp_ref = 50;

    cout << "Real: " << temp << endl;
    cout << "Reference: " << temp_ref << endl; 

    int update = 80;

    temp_ref = update;
    cout << "Real: " << temp << endl;
    cout << "Reference: " << temp_ref << endl; 

  int unit_sales = 102;
  int& unit_sales_ref = unit_sales;

  float gpa = 3.2f;
  float& gpa_ref = gpa;

  string name = "Della";
  string& name_ref = name;
  const string& name_ref_const = name; // you can not change the value of 'name' variable through this reference

  Person person("Perry");
  Person& person_ref = person;

  unit_sales_ref++;

  gpa = gpa + 0.3;

  name = "Della Street";

  person.name[0] = 'p';

  const string name_2 = "Eleni";
  string& name_2_ref = const_cast<string&>(name_2);
  cout << "Real name: " << name_2 << endl;
  cout << "Real name through ref: " << name_2_ref << endl;
  name_2_ref = "Danae";
  cout << "Real name: " << name_2 << endl;
  cout << "Real name through ref: " << name_2_ref << endl; 

  return 0;       

}