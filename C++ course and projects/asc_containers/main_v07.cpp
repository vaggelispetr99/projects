#include <iostream>
#include <map>
#include <unordered_map>
#include <chrono>

using std::cout;
using std::endl;
using std::string;
using std::map;
using std::unordered_map;
using namespace std::chrono;

int main()
{
  map<int, int> ordered_map = {
      {3, 3},
      {13, 13},
      {23, 23},
      {33, 33},
  };
  
  for (int i = 0; i < 300000; i++) {
    ordered_map.insert(std::make_pair(i, i));
  }

  unordered_map<int, int> unordered_map = {
      {3, 3},
      {13, 13},
      {23, 23},
      {33, 33},
  };

  for (int i = 0; i < 300000; i++) {
    unordered_map.insert(std::make_pair(i, i));
  }

  auto start = high_resolution_clock::now();
  for (int i = 0; i < 300000; i++) {
    ordered_map.at(i);
  }
  auto stop = high_resolution_clock::now();

  auto duration = duration_cast<milliseconds>(stop - start);
  cout << "Time (in milliseconds) lookup in an ordered map: " << duration.count() << endl;

  start = high_resolution_clock::now();
  for (int i = 0; i < 300000; i++) {
    unordered_map.at(i);
  }
  stop = high_resolution_clock::now();

  duration = duration_cast<milliseconds>(stop - start);
  cout << "Time (in milliseconds) lookup in an unordered map: " << duration.count() << endl;
}
