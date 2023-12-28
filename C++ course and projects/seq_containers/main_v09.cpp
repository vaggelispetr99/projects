#include <iostream>
#include <forward_list>

using std::cout;
using std::endl;
using std::string;
using std::forward_list;

void print_scores(const forward_list<int> scores) {
  for (const int& score : scores) {
    cout << score << " ";
  }
  cout << endl;
} 

int main()
{
  forward_list<int> scores = {22, 56, 98, 34, 12, 67, 56, 98, 78};

  cout << endl << "--------------Original Contents--------------" << endl;
  print_scores(scores);


  scores.remove(12);
  scores.remove(22);

  cout << endl << "--------------Contents after remove --------------" << endl;
  print_scores(scores);


  scores.sort();

  cout << endl << "--------------Contents after sort --------------" << endl;
  print_scores(scores);

  scores.reverse();

  cout << endl << "--------------Contents after reverse --------------" << endl;
  print_scores(scores);

  scores.unique();

  cout << endl << "--------------Contents after unique --------------" << endl;
  print_scores(scores);

}
