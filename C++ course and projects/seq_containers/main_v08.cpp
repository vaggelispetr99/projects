#include <iostream>
#include <forward_list>

using std::cout;
using std::endl;
using std::string;
using std::forward_list;

int main()
{
  forward_list<string> countries = {"India", "USA", "Canada", "Sri Lanka", "Mexico"};

  cout << "--------------Size--------------" << endl;

  // cout << "Size of forward list: " << countries.size() << endl;
  cout << "Maximum size of forward list: " << countries.max_size() << endl;
  cout << "Is forward list empty: " << std::boolalpha << countries.empty() << endl;

  cout << "--------------Contents--------------" << endl;

  for (string& country : countries) {
    cout << country << endl;
  }
  cout << "--------------Front of the forward list--------------" << endl;
  cout << countries.front() << endl;

  cout << "--------------Original Contents--------------" << endl;

  for (string& country : countries) {
    cout << country << endl;
  }

  countries.push_front("Bangladesh");

  cout << "--------------Contents after push front --------------" << endl;

  for (string& country : countries) {
    cout << country << endl;
  }

  countries.pop_front();

  cout << "--------------Contents after pop front --------------" << endl;

  for (string& country : countries) {
    cout << country << endl;
  }

  countries.insert_after(countries.begin(), "Bangladesh");

  cout << "--------------Contents after insert --------------" << endl;

  for (string& country : countries) {
    cout << country << endl;
  }

  countries.erase_after(countries.before_begin());

  cout << "--------------Contents after erase --------------" << endl;

  for (string& country : countries) {
    cout << country << endl;
  }

  std::forward_list<int> numbers = {1, 2, 3, 4, 5};
  int element_to_insert = 42;

  // Advance the iterator to the fifth element
  auto position = numbers.before_begin();
  for (int i = 0; i < 3; ++i) {
      ++position;
  }

  numbers.insert_after(position, element_to_insert);

  for (int num : numbers) {
      std::cout << num << " ";
  }

   return 0;
}
