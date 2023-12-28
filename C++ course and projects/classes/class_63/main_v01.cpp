#include <iostream>
#include "Department.h"

using std::cin;
using std::cout;
using std::endl;
using std::string;

using std::istream;
using std::ostream;
using std::operator<<;
using std::operator>>;

int main()
{
    string dept;
    int num_employees;
    float salary_budget;
    cout << "Enter department details: " << endl;
    cin >> dept >> num_employees >> salary_budget;

    Department department(dept, num_employees, salary_budget);

    cout << "-----------------------------------" << endl;

    cout << "Department: " << department.get_name()
         << " Num employees: " << department.get_num_employees()
         << " Salary budget: " << department.get_salary_budget() << endl;

    cout << "-----------------------------------" << endl;
    cout << "-----------------------------------" << endl;
    cout << "Enter department details: " << endl;

    auto& instream_1 = cin >> dept;
    auto& instream_2 = instream_1 >> num_employees;
    auto& instream_3 = instream_2 >> salary_budget;

    Department department_1(dept, num_employees, salary_budget);

    cout << "-----------------------------------" << endl;

    auto& ostream_1 = cout << "Department: ";
    auto& ostream_2 = ostream_1 << department_1.get_name();
    auto& ostream_3 = ostream_2 << " Num employees: ";
    auto& ostream_4 = ostream_3 << department_1.get_num_employees();
    auto& ostream_5 = ostream_4 << " Salary budget: ";
    auto& ostream_6 = ostream_5 << department_1.get_salary_budget();
    auto& ostream_7 = ostream_6 << endl;

    cout << "Enter department details: " << endl;

    istream& instream__1 = operator>>(cin, dept);
    istream& instream__2 = instream__1.operator>>(num_employees);
    istream& instream__3 = instream__2.operator>>(salary_budget);

    Department department_2(dept, num_employees, salary_budget);

    cout << "-----------------------------------" << endl;

    ostream& ostream__1 = operator<<(cout, "Department: ");
    ostream& ostream__2 = operator<<(ostream__1, department_2.get_name());
    ostream& ostream__3 = operator<<(ostream_2, " Num employees: ");
    ostream& ostream__4 = ostream__3.operator<<(department_2.get_num_employees());
    ostream& ostream__5 = operator<<(ostream__4,  " Salary budget: ");
    ostream& ostream__6 = ostream__5.operator<<(department_2.get_salary_budget());
    ostream& ostream__7 = ostream__6.operator<<(endl);

    cout << "-----------------------------------" << endl;
    Department department_3;
    cin >> department_3;
    cout << department_3 << endl;

}

