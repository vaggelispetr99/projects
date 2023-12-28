#include<iostream>
#include<string>

using std::cout;
using std::endl;
using std::string;

string* get_larg_str(string* str_1, string* str_2);
const string& get_larg_str_ref(const string& str_1, const string& str_2);
double temp();
auto temp_2(){
    double test = 60.3;
    return test;
}
auto& get_larg_str_ref_2(string& str_1, string& str_2){
    return str_1.length() > str_2.length() ? str_1 : str_2;
}

const auto& get_larg_str_ref_3(string& str_1, string& str_2){
    return str_1.length() < str_2.length() ? str_1 : str_2;
}

int main(){
    string tmp = "Vagg";
    string tmp1 = "Geo";
    string* tmp2 = get_larg_str(&tmp, &tmp1);
    cout << *tmp2 << endl;

    string tmp3 = "Bill";
    string tmp4 = "Iro";
    auto tmp5 = get_larg_str_ref(tmp3, tmp4);
    cout << tmp5 << endl;
    auto temporary = temp();
    cout << typeid(temporary).name() << endl;
    auto temporary_2 = temp_2();
    cout << typeid(temporary_2).name() << endl;

    string tmp6 = "Koulis";
    string tmp7 = "Tsipras";
    auto tmp8 = get_larg_str_ref_2(tmp6, tmp7);
    cout << tmp8 << endl;

    string tmp9 = "Koulis";
    string tmp10 = "Tsipras";
    auto tmp11 = get_larg_str_ref_3(tmp9, tmp10);
    cout << tmp11 << endl;
    return 0;
    
}

string* get_larg_str(string* str_1, string* str_2){
    return str_1->length() > str_2->length() ? str_1 : str_2;
}

const string& get_larg_str_ref(const string& str_1, const string& str_2){
    return str_1.length() > str_2.length() ? str_1 : str_2;
}

double temp(){
    double test = 56.3;
    return test;
}

