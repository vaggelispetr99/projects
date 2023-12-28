#include<iostream>
#include<string>

using std::cout;
using std::endl;
using std::string;

int return_a_val(int* arr, size_t n){
    int val = arr[2];
    return val;
}

float return_a_val(float* arr, size_t n){
    float val = arr[2];
    return val;
}

int add(int num_a, int num_b){
    return num_a + num_b;
}

float add(float num_a, float num_b){
    return num_a + num_b;
}

string add(string num_a, string num_b){
    return num_a + num_b;
}

int add(int num_a, int num_b, int num_c){
    return num_a + num_b + num_c;
}

int add(int num_a, int num_b, int num_c, int num_d){
    return num_a + num_b + num_c + num_d;
}

int main(){
    int int_arr[] {5, 6, 85, 92, 1};
    float float_arr[] {5.63, 6.68, 85.68, 92.3, 1};
    cout << add(23, 45) << endl;
    cout << add(23.65f, 45.88f) << endl; //have to specify with f
    cout << add("hello", " world") << endl;
    cout << add(23, 45) << endl;
    cout << add(23, 45, 85) << endl;
    cout << add(23, 45, 96, 9) << endl;
    cout << return_a_val(int_arr, 5) << endl;
    cout << return_a_val(float_arr, 5)<< endl;

    return 0;
}