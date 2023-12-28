#include <iostream>

using std::cout;
using std::endl;

int main(){
    
    int* arr_1 = new int[5]; //Allocated but not Initialized to the free space
    int* arr_2 = new int[5] {}; //Allocated and Initialized to '0' to the free space
    int* arr_3 = new int[5] {5, 6, 2}; //Allocated and Initialized 3 elements and the others are set to '0' in the free space

    for (int i = 0; i < 5; i++){
        cout << "ARR_1[" << i << "] = " << arr_1[i] << endl;
    }
    for (int i = 0; i < 5; i++){
        cout << "ARR_2[" << i << "] = " << arr_2[i] << endl;
    }
    for (int i = 0; i < 5; i++){
        cout << "ARR_3[" << i << "] = " << arr_3[i] << endl;
    }

    delete[] arr_1;
    delete[] arr_2;
    delete[] arr_3;
    arr_1 = nullptr;
    arr_2 = nullptr;
    arr_3 = nullptr;
    cout << "ending..." << endl;
}