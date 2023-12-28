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

int increment_by_100(int num) {
  return num + 100;
}

int main()
{
  vector<int> odd_nums {1, 3, 5, 7, 9};
  vector<int> even_nums {2, 4, 6, 8, 10};

  cout << "--------------Original--------------------" << endl;
  print_nums(odd_nums);
  print_nums(even_nums);

  vector<int> odd_nums_copy;
  odd_nums_copy.resize(odd_nums.size());

  vector<int> even_nums_copy;
  even_nums_copy.resize(even_nums.size());

  std::transform(odd_nums.begin(), odd_nums.end(), odd_nums_copy.begin(), increment_by_100);
  std::transform(even_nums.begin(), even_nums.end(), even_nums_copy.begin(), increment_by_100);

  cout << "--------------After increment--------------------" << endl;
  print_nums(odd_nums_copy);
  print_nums(even_nums_copy);

  std::reverse(odd_nums_copy.begin(), odd_nums_copy.end());
  std::reverse(even_nums_copy.begin(), even_nums_copy.end());

  cout << "--------------After reverse--------------------" << endl;
  print_nums(odd_nums_copy);
  print_nums(even_nums_copy);
}
