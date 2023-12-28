#include <iostream>
#include <list>
#include <vector>
#include <chrono>

using std::cout;
using std::endl;
using std::list;
using std::vector;
using namespace std::chrono;


int main()
{
  auto start = high_resolution_clock::now();
  vector<int> int_vector {10, 20, 30, 40, 50};
  for (int i = 0; i < 100000; i++) {
    int_vector.insert(int_vector.begin(), i);
  }
  auto stop = high_resolution_clock::now();
  auto duration = duration_cast<milliseconds>(stop - start);
  cout << "Time (in milliseconds) to perform insert in vector: " << duration.count() << endl;

  start = high_resolution_clock::now();
  list<int> int_list {10, 20, 30, 40, 50};
  for (int i = 0; i < 100000; i++) {
    int_list.insert(int_list.begin(), i);
  }
  stop = high_resolution_clock::now();

  duration = duration_cast<milliseconds>(stop - start);
  cout << "Time (in milliseconds) to perform insert in list: " << duration.count() << endl;

  start = high_resolution_clock::now();
  for (int i = 0; i < 100000; i++) {
    int_vector.erase(int_vector.begin());
  }
  stop = high_resolution_clock::now();

  duration = duration_cast<milliseconds>(stop - start);
  cout << "Time (in milliseconds) to perform erase in vector: " << duration.count() << endl;

  start = high_resolution_clock::now();
  for (int i = 0; i < 100000; i++) {
    int_list.erase(int_list.begin());
  }
  stop = high_resolution_clock::now();

  duration = duration_cast<milliseconds>(stop - start);
  cout << "Time (in milliseconds) to perform erase in list: " << duration.count() << endl;
}
