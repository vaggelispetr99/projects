#include <iostream>
#include <vector>

using std::cout;
using std::endl;
using std::string;
using std::vector;

int main()
{
  vector<string> names_vector {3};

  cout << "--------------Size (before adding elements)--------------" << endl;

  cout << "Size of vector: " << names_vector.size() << endl;
  cout << "Allocated capacity: " << names_vector.capacity() << endl;

  names_vector.push_back("Liz");
  names_vector.push_back("Lucy");

  cout << "--------------Size (after adding 2 elements)--------------" << endl;

  cout << "Size of vector: " << names_vector.size() << endl;
  cout << "Allocated capacity: " << names_vector.capacity() << endl;


  names_vector.push_back("Sam");
  names_vector.push_back("Fred");
  names_vector.push_back("Ophelia");
  names_vector.push_back("Rob");

  cout << "--------------Size (after adding 4 more elements)--------------" << endl;

  cout << "Size of vector: " << names_vector.size() << endl;
  cout << "Allocated capacity: " << names_vector.capacity() << endl;

  names_vector.reserve(100);

  cout << "--------------Size (after reserve)--------------" << endl;

  cout << "Size of vector: " << names_vector.size() << endl;
  cout << "Allocated capacity: " << names_vector.capacity() << endl;

  names_vector.shrink_to_fit();

  cout << "--------------Size (after shrinking)--------------" << endl;

  cout << "Size of vector: " << names_vector.size() << endl;
  cout << "Allocated capacity: " << names_vector.capacity() << endl;
}
