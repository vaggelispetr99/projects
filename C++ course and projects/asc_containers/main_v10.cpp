#include <iostream>
#include <map>
#include <set>

using std::cout;
using std::endl;
using std::string;
using std::set;
using std::map;

void print_set(const set<float, std::greater<float>>& lap_timings) {
  for (auto& timing : lap_timings) {
    cout << timing << endl;
  }
}

int main()
{
  set<float, std::greater<float>> lap_timings {10.11, 12.34, 9.99, 13.22, 14.21};

  cout << endl << "--------------Ordered set--------------" << endl;
  print_set(lap_timings);
}
