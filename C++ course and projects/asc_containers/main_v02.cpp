#include <iostream>
#include <set>
#include <unordered_set>

using std::cout;
using std::endl;
using std::string;
using std::set;
using std::unordered_set;

void print_numbers(const set<int>& numbers_set) {
  for (const int& number : numbers_set) {
    cout << number << " ";
  }
  cout << endl;
}

void print_numbers(const unordered_set<int>& numbers_set) {
  for (const int& number : numbers_set) {
    cout << number << " ";
  }
  cout << endl;
}

int main()
{
    set<int> numbers_set {10, 80, 50, 40, 90, 20, 10, 70, 60};
    unordered_set<int> unordered_numbers_set {10, 80, 50, 40, 90, 20, 10, 70, 60};

    cout << endl << "--------------Original elements set--------------" << endl;
    print_numbers(numbers_set);

    cout << endl << "--------------Original elements unordered set--------------" << endl;
    print_numbers(unordered_numbers_set);

    //unordered_set<int> uo_numbers_set {10, 80, 50, 40, 90, 20, 10, 70, 60};

    cout << endl << "-------Original elements unordered set-------" << endl;
    print_numbers(unordered_numbers_set);

    cout << "Number of buckets: " << unordered_numbers_set.bucket_count() << endl;
    cout << "Maximum number of buckets: " 
         << unordered_numbers_set.max_bucket_count() << endl;

    cout << "Number of elements in bucket 2: " 
         << unordered_numbers_set.bucket_size(2) << endl;
    cout << "Number of elements in bucket 4: " 
         << unordered_numbers_set.bucket_size(4) << endl;
    cout << "Bucket that holds number 80: " 
         << unordered_numbers_set.bucket(80) << endl;
}
