#include <iostream>
#include <memory>
#include <string>
#include <algorithm>
#include <random>

using std::cout;
using std::endl;
using std::string;
using std::unique_ptr;
using std::make_unique;

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

    ~person_new(){
        cout << "destructor " << endl;
    } //destructor
};

int main()
{
  // Pre C++14 style of initializing unique pointers
  unique_ptr<double> revenue_ptr_1 {new double {2345.98}};

  // Modern style of initializing unique pointers - this function
  // prevents some subtle memory leaks
  unique_ptr<double> revenue_ptr_2 {make_unique<double>(100345.67)};

  // Compact modern style of initializing unique pointers
  auto revenue_ptr_3 {make_unique<double>(48572.76)};
  auto person_new_ptr {make_unique<person_new>()};
  unique_ptr person_new_ptr_2 {make_unique<person_new>("John")};

  cout << "Revenue 1: " << *revenue_ptr_1 << endl;
  cout << "Revenue 2: " << *revenue_ptr_2 << endl;
  cout << "Revenue 3: " << *revenue_ptr_3 << endl;
  cout << "Person: " << person_new_ptr->get_name() << endl;
  cout << "Person_2: " << person_new_ptr_2->get_name() << endl;
  cout << "Revenue 2 pointer before move: " << revenue_ptr_2 << endl;
  auto revenue_ptr_move = std::move(revenue_ptr_2);
  cout << "Revenue 2 pointer after move: " << revenue_ptr_2 << endl;
  cout << "Revenue 2 move pointer: " << revenue_ptr_move << endl;
  cout << "Revenue 2 move value: " << *revenue_ptr_move << endl;
  revenue_ptr_move.reset();
  cout << "Revenue 2 move pointer after reset: " << revenue_ptr_move << endl;
  if (revenue_ptr_move == nullptr){
    cout << "NULL" << endl;
  }
  revenue_ptr_move.reset(new double{2536.23});
  cout << "Revenue 2 move pointer after reset: " << revenue_ptr_move << endl;
  cout << "Revenue 2 move value after reset: " << *revenue_ptr_move << endl;

  double *raw_pointer = revenue_ptr_move.release();
  cout << "Revenue 2 move pointer after release: " << revenue_ptr_move << endl;
  cout << "Raw pointer after release: " << raw_pointer << endl;
  cout << "Raw pointer value after release: " << *raw_pointer << endl;
  delete raw_pointer;
  raw_pointer =nullptr;
  std::random_device rd;
  std::mt19937 gen(rd());
  std::uniform_int_distribution<> dis(1, 100); // Adjust the range as needed
  const int size = 5;
  unique_ptr arr_point {make_unique<int[]>(size)};
   for (int i = 0; i < size; i++){
    arr_point[i] = dis(gen);
  }
  for (int i = 0; i < size; i++){
    cout << arr_point[i] << endl;
  }
  return 0;
}
