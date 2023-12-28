#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include <map>

using std::cout;
using std::cin;
using std::endl;
using std::vector;
using std::find;
using std::string;
using std::map;
using std::pair;

int main()
{
    map<string, int> map_test;

    map_test.insert(pair<string, int>("Vagg", 20));
    map_test.insert(pair<string, int>("Danae", 55));
    map_test.insert(pair<string, int>("Nick", 10));
    map_test.insert(pair<string, int>("Takis", 85));

    for (pair<string, int> vec : map_test){
        cout << vec.first << " " << vec.second << endl;
   }
    //cout << "hello" << endl;
   for (auto vec : map_test){
        cout << vec.first << " " << vec.second << endl;
   }
    cout << "Empty?: " << map_test.empty() << endl;
    cout << "Size?: " << map_test.size() << endl;
    cout << "Max Size?: " << map_test.max_size() << endl;

    for (auto& [name, num] : map_test){
        num++;
        //cout << name << " " << num << endl;
   }

   for (auto& [name, num] : map_test){
        cout << name << " " << num << endl;
   }
}