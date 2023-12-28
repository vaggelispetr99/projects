#include <iostream>
#include <set>

using std::cout;
using std::endl;
using std::string;
using std::set;

// void print_numbers(const set<int, std::greater<int>>& numbers_set) {
//   for (const int& number : numbers_set) {
//     cout << number << " ";
//   }
//   cout << endl;
// }

void print_numbers(const set<int>& numbers_set) { // set<int, std::greater<int>> numbers_set
  for (const int& number : numbers_set) {
    cout << number << " ";
  }
  cout << endl;
}

int main()
{
  set<int> numbers_set {303, 404, 707};
  // set<int, std::greater<int>> numbers_set {303, 404, 707};

  cout << endl << "--------------Original elements--------------" << endl;
  print_numbers(numbers_set);
  
  numbers_set.insert(101);
  numbers_set.insert(808);

  cout << endl << "--------------After adding 2 more elements--------------" << endl;
  print_numbers(numbers_set);

  numbers_set.insert(303);
  numbers_set.insert(808);
  numbers_set.insert(909);

  cout << endl << "----------After adding some duplicate elements-----------" << endl;
  print_numbers(numbers_set);

  numbers_set.erase(101);
  numbers_set.erase(333);

  cout << endl << "----After erasing some existing and non-existing elements----" << endl;
  print_numbers(numbers_set);

  set<int> numbers_set_2 {10, 80, 50, 10, 90, 20, 10, 70, 70};

  cout << endl << "--------------Original elements--------------" << endl;
  print_numbers(numbers_set_2);

  cout << endl << "--------Deleting the elements from 70 to the end-------" << endl;

  auto pos_of_70 = numbers_set_2.find(70);
  numbers_set_2.erase(pos_of_70, numbers_set_2.end());

  print_numbers(numbers_set_2);

  cout << endl << "--------Element counts (1 or 0)-------" << endl;
  cout << "Count of element 10: " << numbers_set_2.count(10) << endl;
  cout << "Count of element 33: " << numbers_set_2.count(33) << endl;
}