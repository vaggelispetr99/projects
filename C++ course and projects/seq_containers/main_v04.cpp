#include <iostream>
#include <vector>

using std::cout;
using std::endl;
using std::string;
using std::vector;

int main()
{
  vector<string> names_vector = {"Liz", "Lucy", "Sam", "Fred", "Ophelia"};

  cout << "--------------Size--------------" << endl;

  cout << "Size of vector: " << names_vector.size() << endl;
  cout << "Maximum size of vector: " << names_vector.max_size() << endl;
  cout << "Allocated capacity: " << names_vector.capacity() << endl;
  cout << "Is vector empty: " << std::boolalpha << names_vector.empty() << endl;

  cout << "-------------Contents---------------" << endl;

  for (auto& name : names_vector) {
    cout << name << endl;
  }

  cout << "--------------Random Access with operator[]--------------" << endl;

  cout << "Element at index 0: " << names_vector[0] << endl;
  cout << "Element at index 3: " << names_vector[3] << endl;

  cout << "--------------Random Access with at()--------------" << endl;

  cout << "Element at index 1: " << names_vector.at(1) << endl;
  cout << "Element at index 4: " << names_vector.at(4) << endl;
}
