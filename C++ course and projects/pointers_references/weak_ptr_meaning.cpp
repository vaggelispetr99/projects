#include <iostream>
#include <memory>
#include <string>

using std::cout;
using std::endl;
using std::string;
using std::shared_ptr;
using std::weak_ptr;
using std::make_shared;

struct Company;

struct Person {
    string name;
    shared_ptr<Company> company_ptr;

    ~Person() {
      cout << "Destructing person " << name << endl;
    }
};

struct Company {
    string name;
    weak_ptr<Person> person_ptr;

    ~Company() {
      cout << "Destructing company " << name << endl;
    }
};

int main()
{
  shared_ptr<Person> nina_ptr {make_shared<Person>()};
  nina_ptr->name = "Nina";

  shared_ptr<Company> msft_ptr {make_shared<Company>()};
  msft_ptr->name = "Microsoft";

  nina_ptr->company_ptr = msft_ptr;
  msft_ptr->person_ptr = nina_ptr;

  return 0;
}
