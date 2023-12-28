#include <iostream>
#include <queue>
#include <list>

using std::cout;
using std::endl;
using std::string;
using std::queue;
using std::list;


int main()
{
  queue<string> authors_queue; // by default the queue is implemented via a deque
  // queue<string, list<string>> authors_queue; // through this you tell to the compiler to implement the queue via a list<string>
 
  authors_queue.push("J.K. Rowling");
  authors_queue.push("George R. R. Martin");
  authors_queue.push("Ernest Hemingway");

  cout << endl << "--------------After adding 3 elements--------------" << endl;
  cout << "Element at the front of the queue: " << authors_queue.front() << endl;
  cout << "Element at the back of the queue: " << authors_queue.back() << endl;

  authors_queue.push("Mark Twain");

  cout << endl << "--------------After adding Mark Twain--------------" << endl;
  cout << "Element at the front of the queue: " << authors_queue.front() << endl;
  cout << "Element at the back of the queue: " << authors_queue.back() << endl;

  authors_queue.pop();
  authors_queue.pop();

  cout << endl << "-------After popping (dequeuing) first two elements--------" << endl;
  cout << "Element at the front of the queue: " << authors_queue.front() << endl;
  cout << "Element at the back of the queue: " << authors_queue.back() << endl;
  
}