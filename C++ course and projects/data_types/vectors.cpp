#include <iostream>
#include <vector>
#include <algorithm>

using std::cout;
using std::cin;
using std::endl;
using std::vector;
using std::find;

int main()
{
    vector<int> int_vector;

    cout << "Empty?: " << std::boolalpha << int_vector.empty() << endl;
    cout << "Size?: " << int_vector.size() << endl;
    cout << "Max_size?: " << int_vector.max_size() << endl;

    if (int_vector.empty()){
        cout << "Empty" << endl;
    } else {
        cout << "Non Empty" << endl;
    }

    int_vector.push_back(34);
    int_vector.push_back(55);
    int_vector.push_back(17);
    int_vector.push_back(7);

    cout << "Empty? (after update): " << std::boolalpha << int_vector.empty() << endl;
    cout << "Size? (after update): " << int_vector.size() << endl;
    cout << "Max_size? (after update): " << int_vector.max_size() << endl;

    if (int_vector.empty()){
        cout << "Empty (after update)" << endl;
    } else {
        cout << "Non Empty (after update)" << endl;
    }
    int x;
    cout << "Enter the search element: " << endl;
    cin >> x;

    std::vector<int>::iterator begin_itr = int_vector.begin();
    std::vector<int>::iterator end_itr = int_vector.end();

    std::vector<int>::iterator found_itr = find(begin_itr, end_itr, x);

    if (found_itr == end_itr){
        cout << "Not Found" << endl;
    } else {
        cout << "found" << endl;
    }

}