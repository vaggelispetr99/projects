#include <iostream>
#include <fstream>
#include <vector>
#include <iomanip>

using std::ifstream;
using std::ofstream;
using std::cout;
using std::endl;
using std::string;
using std::vector;

int main(){
    ifstream input_file_stream("integers.txt");

    if (!input_file_stream){
        cout << "The file can not be opened for read!" << endl;
        return 1;
    }

    while(true){
        int int_var;

        input_file_stream >> int_var;

        if (input_file_stream.eof()){
            break;
        }
        
        cout << int_var << endl;
        
        }
    
    cout << "**********************" << endl;

    ifstream input_file_stream_string("strings.txt");

    if (!input_file_stream_string){
        cout << "The file can not be opened for read!" << endl;
        return 1;
    }

    while(true){
        string strings_var;

        input_file_stream_string >> strings_var;

        if (input_file_stream_string.eof()){
            break;
        }
        
        cout << strings_var << endl;
        
        }

        cout << "**********************" << endl;

    ifstream input_file_stream_string_2("names.txt");

    if (!input_file_stream_string_2){
        cout << "The file can not be opened for read!" << endl;
        return 1;
    }

    while(true){
        string strings_var;

        input_file_stream_string_2 >> strings_var;

        if (input_file_stream_string_2.eof()){
            break;
        }
        
        cout << strings_var << endl;
        
        }

        cout << "**********************" << endl;

    ifstream input_file_stream_string_3;

    input_file_stream_string_3.open("names.txt", std::ios::in); //the second arg is the file open mode which is in read mode

    if (!input_file_stream_string_3){
        cout << "The file can not be opened for read!" << endl;
        return 1;
    }

    while(true){
        string strings_var;

        std::getline(input_file_stream_string_3, strings_var);

        if (input_file_stream_string_3.eof()){
            break;
        }
        
        cout << strings_var << endl;
        
        }

        input_file_stream_string_3.close();

        cout << "**********************" << endl;

    ifstream input_file_stream_structure("struct_data.txt");

    if (!input_file_stream_structure){
        cout << "The file can not be opened for read!" << endl;
        return 1;
    }

    while(input_file_stream_structure){
        string name;
        int math, english, science;

        std::getline(input_file_stream_structure, name);

        input_file_stream_structure >> math >> english >> science;

        //ignore newline
        input_file_stream_structure.ignore();

        if (input_file_stream_structure.eof()){
            break;
        }
        
        cout << "name: " << name << ", math: " << math << ", english: " << english << ", science: " << science << endl;
        
        }

        cout << "**********************" << endl;

    ifstream input_file_stream_string_4;

    input_file_stream_string_4.open("strings.txt", std::ios::in); //the second arg is the file open mode which is in read mode

    if (!input_file_stream_string_4){
        cout << "The file can not be opened for read!" << endl;
        return 1;
    }

    while(true){
        char char_var;

        input_file_stream_string_4 >> char_var;

        if (input_file_stream_string_4.eof()){
            break;
        }
        
        cout << char_var << endl;
        
        }

        input_file_stream_string_4.close();

        cout << "**********************" << endl;

    ofstream output_file_stream("names_2.txt");

    if (!output_file_stream){
        cout << "The file can not be opened for write!" << endl;
        return 1;
    }

    vector<string> string_vector {"Athens Greece", "Patras Greece", "Heraklion Greece", "Volos Greece", "Glifada Greece"};

    for (auto& i : string_vector){
        output_file_stream << i << endl;
    }

        cout << "**********************" << endl;

    ofstream output_file_stream_2("struct_data_2.txt");

    if (!output_file_stream_2){
        cout << "The file can not be opened for write!" << endl;
        return 1;
    }

    vector<int> math_vector {90, 20, 3, 89, 6};
    vector<int> english_vector {5, 65, 66, 99, 0};
    vector<int> science_vector {52, 41, 44, 6, 4};

    for (int i = 0; i < string_vector.size(); i++){
        output_file_stream_2 << string_vector[i] << endl;
        output_file_stream_2 << math_vector[i] << " " << english_vector[i] << " " << science_vector[i] << endl;
    }

        cout << "**********************" << endl;

    ofstream output_file_stream_3;
    output_file_stream_3.open("struct_data_3.txt", std::ios::out);

    if (!output_file_stream_3){
        cout << "The file can not be opened for write!" << endl;
        return 1;
    }

    for (int i = 0; i < string_vector.size(); i++){
        output_file_stream_3 << std::left << std::setw(20) << string_vector[i] << ": ";
        output_file_stream_3 << math_vector[i] << " " << english_vector[i] << " " << science_vector[i] << endl;
    }

    output_file_stream_3.close();

        cout << "**********************" << endl;


        return 0;
}