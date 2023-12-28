#include <iostream>

using std::cout;
using std::endl;

void update_revenue(double* revenue_ptr, double* another_revenue_ptr);

int main()
{
  double bellevue_store_revenue = 100034.45;
  double kirkland_store_revenue = 5555.55;
  
  double* revenue_ptr = &bellevue_store_revenue;

  cout << "Bellevue revenue before update: " 
       << bellevue_store_revenue << endl;
  cout << "revenue_ptr address before update: " 
       << revenue_ptr << endl;

  update_revenue(revenue_ptr, &kirkland_store_revenue);

  cout << "Bellevue revenue after update: " 
       << bellevue_store_revenue << endl;
  cout << "revenue_ptr address after update: " 
       << revenue_ptr << endl;

  return 0;
}

void update_revenue(double* revenue_ptr, double* another_revenue_ptr) {
  cout << "In update_revenue" << endl;

  revenue_ptr = another_revenue_ptr;
}
