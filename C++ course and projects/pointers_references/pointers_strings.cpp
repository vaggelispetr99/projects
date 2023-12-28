#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include <map>

using std::cout;
using std::cin;
using std::endl;
using std::vector;
using std::find;
using std::string;
using std::map;
using std::pair;

int main()
{
  char letter {'V'};
  char* letter_ptr {&letter};

  int balance {1000};
  auto balance_ptr {&balance};

  float expenses {245.56F};
  float* expenses_ptr {&expenses};

  double salary {5000.456};
  auto salary_ptr {&salary};

  cout << "sizeof char: " << sizeof(letter) << endl;
  cout << "sizeof char*: " << sizeof(letter_ptr) << endl;

  cout << "----------" << endl;
  cout << "sizeof int: " << sizeof(balance) << endl;
  cout << "sizeof int*: " << sizeof(balance_ptr) << endl;

  cout << "----------" << endl;
  cout << "sizeof float: " << sizeof(expenses) << endl;
  cout << "sizeof float*: " << sizeof(expenses_ptr) << endl;

  cout << "----------" << endl;
  cout << "sizeof double: " << sizeof(salary) << endl;
  cout << "sizeof double*: " << sizeof(salary_ptr) << endl;

  cout << "type of letter_ptr: " << typeid(letter_ptr).name() << endl;
  cout << "type of balance_ptr: " << typeid(balance_ptr).name() << endl;
  cout << "type of expenses_ptr: " << typeid(expenses_ptr).name() << endl;
  cout << "type of salary_ptr: " << typeid(salary_ptr).name() << endl;

  const char* movie_ptr {"When Harry Met Sally"};
  cout << "Movie name: " << *movie_ptr << endl;

  char movie[] {"Saving Private Ryan"};
  cout << "Movie name: " << movie << endl;

  cout << "Value in movie_ptr at index=0: " << movie_ptr[0] << endl;
  cout << "Value in movie at index=0: " << movie[0] << endl;

  cout << "Value in movie_ptr at index=6: " << movie_ptr[6] << endl;
  cout << "Value in movie at index=6: " << movie[6] << endl;

  cout << "Value in movie_ptr at index=9: " << movie_ptr[9] << endl;
  cout << "Value in movie at index=9: " << movie[9] << endl;  

  cout << "Value in movie_ptr at index=0: " << *movie_ptr << endl;
  cout << "Value in movie at index=0: " << *movie << endl;

  cout << "Value in movie_ptr at index=6: " << *(movie_ptr + 6) << endl;
  cout << "Value in movie at index=6: " << *(movie + 6) << endl;

  cout << "Value in movie_ptr at index=9: " << *(movie_ptr + 9) << endl;
  cout << "Value in movie at index=9: " << *(movie + 9) << endl;

  string movies_rev = "Saving Private Ryan";
  string* movies_reviews = &movies_rev;
  cout << "Movie name: " << movies_reviews << endl;

  cout << "Empty?: " << movies_reviews->empty() << endl;
  cout << "Length?: " << movies_reviews->length() << endl; 
  cout << "Value in movie at index=8: " << movies_reviews->at(8) << endl; 

  cout << "Empty?: " << (*movies_reviews).empty() << endl;
  cout << "Length?: " << (*movies_reviews).length() << endl; 
  cout << "Value in movie at index=8: " << (*movies_reviews).at(8) << endl; 

  string name_1 = "Vagg";
  string name_2 = "Danae";
  string name_3 = "Elena";
  string name_4 = "Dionisis";

  vector<string*> temp {&name_1, &name_2, &name_3, &name_4};

  cout << "Value in movie at index=2: " << *(temp.at(2)) << endl; 
  cout << "Length: " << (temp.at(2))->length() << endl; 
  cout << "Value in movie at index=2: " << temp.at(2) << endl; 

  vector<string> temp_new {name_1, name_2, name_3, name_4};
  vector<string>* temp_pointer = &temp_new;

  cout << "Value in movie at index=2: " << temp_pointer->at(2) << endl; 
  cout << "Length: " << (temp_pointer->at(2)).length() << endl; 

  for(auto it = temp_pointer->cbegin(); it < temp_pointer->cend(); it++){
    cout << *it << endl;  
  }

   map<int, string*> map_test;

    map_test.insert(pair<int, string*>(20, &name_1));
    map_test.insert(pair<int, string*>(50, &name_2));
    map_test.insert(pair<int, string*>(88, &name_3));
    map_test.insert(pair<int, string*>(85, &name_4));

    for(auto check : map_test){
    cout << check.first << *(check.second) << endl;
    cout << "Length: " << (check.second)->length() << endl;   
  }

  char* string_var = "This is a string";
  char* string_var_new = "Hello world";
  //*string_var = 'l';
// Assume the memory location is 0x7ffee11eb6c8

  cout << *string_var << endl;
  cout << string_var << endl;

  cout << *string_var_new << endl;
  cout << string_var_new << endl;
}
