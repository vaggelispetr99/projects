#include <iostream>
#include <list>

using std::cout;
using std::endl;
using std::string;
using std::list;

void print_countries(const list<string>& countries) {
  for (const string& country : countries) {
    cout << country << " ";
  }

  cout << endl;
}

int main()
{
  list<string> countries = {"India", "USA", "Canada", "Sri Lanka", "Mexico"};

  cout << "--------------Size--------------" << endl;

  cout << "Size of list: " << countries.size() << endl;
  cout << "Maximum size of list: " << countries.max_size() << endl;
  cout << "Is list empty: " << std::boolalpha << countries.empty() << endl;

  cout << "--------------Contents--------------" << endl;

  for (std::list<string>::const_reverse_iterator it = countries.crbegin();
       it !=  countries.crend(); 
       it++) {
    cout << *it << endl;
  }

  cout << "--------------Front and back of the list--------------" << endl;
  cout << "Front: " << countries.front() << endl;
  cout << "Back: " << countries.back() << endl;


  countries.push_front("Nepal"); 

  cout << endl << "--------------Contents after push front --------------" << endl;
  print_countries(countries);


  countries.push_back("Tunisia");

  cout << endl << "--------------Contents after push back --------------" << endl;
  print_countries(countries);


  countries.pop_front();

  cout << endl << "--------------Contents after pop front --------------" << endl;
  print_countries(countries);


  countries.pop_back();

  cout << endl << "--------------Contents after pop back --------------" << endl;
  print_countries(countries);
}
