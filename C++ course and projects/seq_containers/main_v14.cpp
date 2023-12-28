#include <iostream>
#include <stack>
#include <vector>

using std::cout;
using std::endl;
using std::string;
using std::stack;
using std::vector;


int main()
{
  stack<string> authors_stack; // by default the stack is implemented via a deque
  // stack<string, vector<string>> authors_stack; // through this you tell to the compiler to implement the stack via a vector<string>

  authors_stack.push("J.K. Rowling");
  authors_stack.push("George R. R. Martin");
  authors_stack.push("Ernest Hemingway");

  cout << endl << "--------------After adding 3 elements--------------" << endl;
  cout << "Element at top of stack: " << authors_stack.top() << endl;

  authors_stack.push("Mark Twain");

  cout << endl << "--------------After adding Mark Twain--------------" << endl;
  cout << "Element at top of stack: " << authors_stack.top() << endl;

  authors_stack.pop();
  authors_stack.pop();

  cout << endl << "--------------After popping last two elements--------------" << endl;
  cout << "Element at top of stack: " << authors_stack.top() << endl;
  
}