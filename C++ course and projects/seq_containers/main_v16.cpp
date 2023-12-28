#include <iostream>
#include <queue>
#include <deque>

using std::cout;
using std::endl;
using std::string;
using std::priority_queue;
using std::deque;

int main()
{
  priority_queue<int> numbers_queue;
  
  numbers_queue.push(4004);
  numbers_queue.push(7007);
  numbers_queue.push(3003);

  cout << endl << "--------------After adding 3 elements--------------" << endl;
  cout << "Element at the front of the queue: " << numbers_queue.top() << endl;

  numbers_queue.push(9009);

  cout << endl << "--------------After adding 9009--------------" << endl;
  cout << "Element at the front of the queue: " << numbers_queue.top() << endl;

  numbers_queue.pop();
  numbers_queue.pop();

  cout << endl << "-------After popping (dequeuing) first two elements--------" << endl;
  cout << "Element at the front of the queue: " << numbers_queue.top() << endl; 
}