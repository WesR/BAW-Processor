#include "IEEE754.h"
#include <iostream>

using namespace std;

int main()
{
    IEEE754 test(500), test2(50), testR;
    //test.print();
    //cout << test.getfloat() << endl;
    //cout << endl;
    //cout << endl;
    testR = test + test2;
    //testR.print();
    cout << testR.getfloat() << endl;
    return 0;
}