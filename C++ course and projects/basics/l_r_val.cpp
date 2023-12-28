#include <iostream>

using std::cout;
using std::endl;
using std::string;

float double_salary(float salary) {
  float doubled_salary = salary * 2;

  return doubled_salary;
}

float compute_bonus(float salary, float bonus_percent) {
  float total_salary = salary + salary * bonus_percent * 0.01;

  return total_salary;
}

int main()
{
  float salary = 80000.0f;
  float expenses = 45345.34f;

  float savings = salary - expenses;

  float&& total_salary = compute_bonus(salary, 10);
  //const float& total_salary = compute_bonus(salary, 10);

  cout << "Salary: " << salary << endl;
  cout << "Expenses: " << expenses << endl;
  cout << "Total salary (through reference): " << total_salary << endl;
}
