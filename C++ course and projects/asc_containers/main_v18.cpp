#include <iostream>
#include <algorithm>
#include <random>
#include <vector>

using std::cout;
using std::endl;
using std::string;
using std::vector;

void print_nums(const vector<int> nums) {
  std::for_each(nums.begin(), nums.end(), [] (int num) {cout << num << " ";});
  cout << endl;
}

int main()
{
  vector<int> odd_nums {1, 3, 5, 7, 9};
  vector<int> even_nums {2, 4, 6, 8, 10};

  cout << "--------------Before shuffle--------------------" << endl;
  print_nums(odd_nums);
  print_nums(even_nums);
  
  std::shuffle(odd_nums.begin(), odd_nums.end(), std::default_random_engine(123));
  std::shuffle(even_nums.begin(), even_nums.end(), std::default_random_engine(123));

  cout << "--------------After shuffle--------------------" << endl;
  print_nums(odd_nums);
  print_nums(even_nums);

  std::sort(odd_nums.begin(), odd_nums.end());
  std::sort(even_nums.begin(), even_nums.end());

  cout << "--------------After sort--------------------" << endl;
  print_nums(odd_nums);
  print_nums(even_nums);
}
