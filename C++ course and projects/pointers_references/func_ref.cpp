#include <iostream>
#include <string>

using std::cout;
using std::endl;
using std::string;

struct Person {
  string name;

  Person(string n) : name(n) {}
};

void update_name(Person& person);

int main()
{
  Person person("Ophelia");

  cout << "Person's name (before update_name): " << person.name << endl;

  update_name(person);

  cout << "Person's name (after update_name): " << person.name << endl;

  return 0;
}

void update_name(Person& person) {
  cout << "In update_name" << endl;

  person.name = "Shonda";
}

