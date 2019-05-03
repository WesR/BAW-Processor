#include "IEEE754.h"
#include <iostream>

using namespace std;

int main()
{
    IEEE754 test(50.3), test2(50), testR;
    
    cout << test.getfloat() << endl;
    
    test.print();
    cout << endl;
    test.getRound();
    
    testR = test;
    cout << testR.getfloat() << endl;
    return 0;
}