#include <iostream>
#include <string>

int main() {
    const int numRows = 3;
    const int numCols = 4;

    // Initialize a 2D array of strings
    std::string twoDArray[][numCols] = {
        {"one", "two", "three", "four"},
        {"five", "six", "seven", "eight"},
        {"nine", "ten", "eleven", "twelve"}
    };
    
    // Access and print elements of the 2D array
    for (int i = 0; i < numRows; ++i) {
        for (int j = 0; j < numCols; ++j) {
            std::cout << twoDArray[i][j] << " ";
        }
        std::cout << std::endl;
    }
    
    return 0;
}
