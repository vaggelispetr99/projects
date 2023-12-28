#include <iostream>
#include <vector>

using std::cout;
using std::endl;
using std::string;
using std::vector;

template <typename T, typename Aggregate>
void compute_aggregation(const vector<T>& values, Aggregate aggregate) {
  for (const T& val : values) {
    aggregate(val);
  }
}

class Numbers {
  private:
    vector<int> int_vector;
    float total = 0;
    int count = 0;
    float average = 0;

  public:
    Numbers() : int_vector{12, 57, 90, 119, 456, 33, 91, 115, 220} {

    }

    void compute_statistics() {
      compute_aggregation(int_vector, [this] (const int& elem) {
        total = total + elem;
        count = count + 1;
        average = total / count;
      });
    }

    void display_statistics() const {
      cout << endl << "---------Original Values------------" <<  endl;
      for (const int& val : int_vector) {
        cout << val << " ";
      }
      cout << endl;
    
      cout << endl << "---------Statistics------------" <<  endl;
      cout << "Total: " << total << endl;
      cout << "Count: " << count << endl;
      cout << "Average: " << average << endl;      
    }

};


int main()
{
  Numbers numbers;

  numbers.compute_statistics();

  numbers.display_statistics();
}
