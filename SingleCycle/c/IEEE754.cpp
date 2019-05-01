#include "IEEE754.h"
#include <string.h>
#include <iostream>


using namespace std;

IEEE754::IEEE754()
{
    FPval = 0x00000000;
}

IEEE754::IEEE754(float f)
{
    FPval = bitset<sizeof f*8>(*(long unsigned int*)(&f));
}

float IEEE754::getfloat()
{
    float output;
    int s = FPval[31];
    bitset<8> e;
    bitset<23> m;
    float mTotal = 0.0;
    
    for (int i = 7; i >= 0; i--)
        e[i] = FPval[i + 23];
    for (int i = 22; i >= 0; i--)
        m[i] = FPval[i];
    int j = 1;
    for (int i = 22; i >= 0; i--) 
    {
        if (m[i] == 1) 
        {
            mTotal += 1 / ( pow(2, (j) ));
        }
        j++;
    }
    
    mTotal += 1.0;
    cout << s << " " << e << " " << m << endl;
    cout << mTotal << endl;
    output = pow((-1), s) * mTotal * pow(2, (e.to_ulong() - 127));
    
    return output;
}

void IEEE754::print()
{
    cout << FPval << endl;
    return;
}
