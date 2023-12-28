#include <iostream>
#include <vector>
#include <algorithm>
#include <string>

using std::cout;
using std::cin;
using std::endl;
using std::vector;
using std::find;
using std::string;

int main()
{
    vector<string> str_vector;

    str_vector.push_back("Vagg");
    str_vector.push_back("Danae");
    str_vector.push_back("Nick");
    str_vector.push_back("Takis");

    for (int i=0; i < str_vector.size(); i++){
        cout << str_vector[i] << endl;
   }
    vector<string>::const_iterator ittt = find(str_vector.cbegin(), str_vector.cend(), "Takis");
    cout << *ittt << "testing" << endl;
    //vector<string>::iterator itt = find(str_vector.begin(), str_vector.end(), "Nick");
    auto itt = find(str_vector.begin(), str_vector.end(), "Nick");

    if (itt != str_vector.end()){
        *itt = "NICK";
    }

    for (int i=0; i < str_vector.size(); i++){
        cout << str_vector.at(i) << "test" << endl;
   }

    for (auto it = str_vector.begin() ; it < str_vector.end(); it++){
        cout << *it << "pointer" << endl;
   }

   for (auto it = str_vector.cbegin() ; it < str_vector.cend(); it++){
        cout << *it << "const" << endl;
   }
//return 0;  
    auto tmp = str_vector.rbegin();
    while (tmp != str_vector.rend()){
        cout << *tmp << "reverse" << endl;
        tmp++;
    }
    auto tmp2 = str_vector.crbegin();
    do{
        cout << *tmp2 << "reverseconst" << endl;
        tmp2++;
    }while (tmp2 != str_vector.crend());
    cout << "hello" << endl;

    for (auto vec : str_vector){
        cout << vec << "rangedloops" << endl;
   }

   for (auto& vec : str_vector){
        vec[0]= std::towlower(vec[0]);
        //cout << vec << "rangedloopstolow" << endl;
   }
   for (auto vec : str_vector){
        cout << vec << "rangedloopsnew" << endl;
   }
}