#include <iostream>
#include <set>
#include <unordered_set>
#include <chrono>

using std::cout;
using std::endl;
using std::string;
using std::set;
using std::unordered_set;
using namespace std::chrono;


int main()
{
  set<int> numbers_set {10, 80, 50, 40, 90, 20, 10, 70, 60};
  for (int i = 0; i < 300000; i++) {
    numbers_set.insert(i);
  }

  unordered_set<int> uo_numbers_set {10, 80, 50, 40, 90, 20, 10, 70, 60};
  for (int i = 0; i < 300000; i++) {
    uo_numbers_set.insert(i);
  }

  auto start = high_resolution_clock::now();
  for (int i = 0; i < 300000; i++) {
    numbers_set.find(i);
  }
  auto stop = high_resolution_clock::now();

  auto duration = duration_cast<milliseconds>(stop - start);
  cout << "Time (in milliseconds) find in an ordered set: " << duration.count() << endl;

  start = high_resolution_clock::now();
  for (int i = 0; i < 300000; i++) {
    uo_numbers_set.find(i);
  }
  stop = high_resolution_clock::now();

  duration = duration_cast<milliseconds>(stop - start);
  cout << "Time (in milliseconds) find in an unordered set: " << duration.count() << endl;
}
