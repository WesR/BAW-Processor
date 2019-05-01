#include "IEEE754.h"
#include <iostream>

using namespace std;

int main()
{
    IEEE754 test(-19.0);
    test.print();
    cout << test.getfloat() << endl;
    cout << endl;
    return 0;
}