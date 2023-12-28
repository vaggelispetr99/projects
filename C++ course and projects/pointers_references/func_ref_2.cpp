#include <iostream>
#include <string>
#include <vector>

using std::cout;
using std::endl;
using std::string;
using std::vector;

struct Person {
  string name;

  Person(string n) : name(n) {}
};

void print_names(const vector<Person>& person_vector);

int main()
{
  vector<Person> person_vector {
    Person("Ophelia"), Person("Jordan"), Person("Kari"), Person("Brenton")
  };

  print_names(person_vector);

  return 0;
}

void print_names(const vector<Person>& person_vector) {

  for (const Person& person : person_vector) {
    cout << "Person's name: " << person.name << endl;
  }
}

