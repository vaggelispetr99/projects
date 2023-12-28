#include <iostream>
#include <deque>

using std::cout;
using std::endl;
using std::string;
using std::deque;

void print_names(const deque<string>& names_deque) {
  for (const string& name : names_deque) {
    cout << name << " ";
  }
  cout << endl;
}

int main()
{
  deque<string> names_deque {2};

  names_deque.push_back("Lucy");
  names_deque.push_back("Sam");
  names_deque.push_back("Fred");
  names_deque.push_back("Ophelia");
  names_deque.push_back("Rob");

  cout << "--------------Size--------------" << endl;

  cout << "Size of deque: " << names_deque.size() << endl;
  cout << "Maximum size of deque: " << names_deque.max_size() << endl;
  // cout << "Allocated capacity: " << names_deque.capacity() << endl;
  cout << "Is deque empty: " << std::boolalpha << names_deque.empty() << endl;

  cout << "-------------Contents---------------" << endl;

  for (auto& name : names_deque) {
    cout << name << endl;
  }

  cout << "--------------Random Access with operator[]--------------" << endl;
  cout << "Element at index 3: " << names_deque[3] << endl;

  cout << "--------------Random Access with at()--------------" << endl;
  cout << "Element at index 4: " << names_deque.at(4) << endl;

  cout << "--------------Front and back of the deque--------------" << endl;
  cout << "Front: " << names_deque.front() << endl;
  cout << "Back: " << names_deque.back() << endl;

  names_deque.push_front("Mason"); 

  cout << endl << "--------------Contents after push front --------------" << endl;
  print_names(names_deque);


  names_deque.push_back("Gina");

  cout << endl << "--------------Contents after push back --------------" << endl;
  print_names(names_deque);


  names_deque.pop_front();

  cout << endl << "--------------Contents after pop front --------------" << endl;
  print_names(names_deque);


  names_deque.pop_back();

  cout << endl << "--------------Contents after pop back --------------" << endl;
  print_names(names_deque);
}