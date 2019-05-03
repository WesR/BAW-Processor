#include "IEEE754.h"
#include <string.h>
#include <iostream>


using namespace std;

IEEE754::IEEE754()
{
    FPval = 0x00000000;
    s = FPval[31];
    for (int i = 7; i >= 0; i--)
        e[i] = FPval[i + 23];
    for (int i = 22; i >= 0; i--)
        m[i] = FPval[i];
}

IEEE754::IEEE754(float f)
{
    FPval = bitset<sizeof f*8>(*(long unsigned int*)(&f));
    s = FPval[31];
    for (int i = 7; i >= 0; i--)
        e[i] = FPval[i + 23];
    for (int i = 22; i >= 0; i--)
        m[i] = FPval[i];
}

int IEEE754::to_int(bitset<8> input) 
{
    int total = 0;
    for (int i = 7; i >= 0; i--)
    {
        if (input[i] == 1) 
        {
            total += pow(2,i);
        }
    }
    return total;
}
//test
int IEEE754::to_int(bitset<23> input) 
{
    int total = 0;
    for (int i = 22; i >= 0; i--)
    {
        if (input[i] == 1) 
        {
            total += pow(2,i);
        }
    }
    return total;
}

// bitset<8>::to_e_set(unsigned int input) 
// {
//     bitset<8> output;
//     for (int i = 7; i >= 0; i--)
//     {
//         if (pow(2,i) <= input)
//         {
//             input -= pow(2,i);
//             output[i] = 1;
//         }
//     }
//     return output;
// }

// bitset<23>::to_m_set(unsigned int input) 
// {
//     bitset<23> output;
//     for (int i = 22; i >= 0; i--)
//     {
//         if (pow(2,i) <= input)
//         {
//             input -= pow(2,i);
//             output[i] = 1;
//         }
//     }
//     return output;
// }

float IEEE754::getfloat()
{
    float output;
    float mTotal = 0.0;
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
    //cout << s << " " << e << " " << m << endl;
    //cout << mTotal << endl;
    output = pow((-1), s) * mTotal * pow(2, (e.to_ulong() - 127));
    
    return output;
}

void IEEE754::makeAbs()
{
    s = 0;
    FPval[31] = 0;
    return;
}

void IEEE754::makeNeg()
{
    s = ~(FPval[31]);
    FPval[31] = ~(FPval[31]);
    return;
}

void IEEE754::getFloor()
{
    int delta;
    delta = 23 - (to_int(e) - 126);
    //cout << delta;
    if (delta >= 23)
    {
        FPval = 0x00000000;
        s = FPval[31];
        for (int i = 7; i >= 0; i--)
            e[i] = FPval[i + 23];
        for (int i = 22; i >= 0; i--)
            m[i] = FPval[i];
        return;
    }
    for (int i = delta; i >= 0; i--)
    {
        m[i] = 0;
        FPval[i] = 0;
    }
    return;
}

void IEEE754::getCeil()
{
    bitset<23> ceilAdd = 0x00000;
    int delta;
    bitset<25> Cin = 0x00000;
    bitset<25> Sum = 0x00000;
    bitset<25> newM = 0x00000;
    
    delta = 23 - (to_int(e) - 126);
    ceilAdd[delta+1] = 1;
    for (int i = delta; i >= 0; i--)
    {
        m[i] = 0;
        FPval[i] = 0;
    }
    //add 1
    for (int i=22; i>=0; i--)
    {
        newM[i] = m[i];
    }
    for (int i = 0; i <= 24; i++)
    {
        Cin[i+1] = (ceilAdd[i] & newM[i]) | (ceilAdd[i] & Cin[i]) | (newM[i] & Cin[i]);
        Sum[i] = ((Cin[i]) ^ (ceilAdd[i])) ^ (newM[i]);
    }
    //write
    for (int i = 22; i >= 0; i--)
    {
        FPval[i] = Sum[i];
        m[i] = Sum[i];
    }
    return;
}

void IEEE754::getRound()
{
    int delta;
    delta = 23 - (to_int(e) - 126);
    if (m[delta] == 0) 
    {
        getFloor();
    } else if (m[delta] == 1) {
        getCeil();
    }
    
    return;
}

void IEEE754::print()
{
    cout << FPval << endl;
    return;
}

IEEE754 IEEE754::operator=(IEEE754 next)
{
    FPval = next.FPval;
    s = next.s;
    e = next.e;
    m = next.m;
}

IEEE754 IEEE754::operator+(IEEE754 next) 
{
    //normalize first
    IEEE754 output;
    int unbiasA = e.to_ulong();
    int unbiasB = next.e.to_ulong();
    unsigned long dif = abs(unbiasA - unbiasB);
    float f = 0.0;
    int new_e_int;
    bitset<8> new_e_set = 0x00;
    bitset<23> new_m_set = 0x00000;
    bitset<25> add_m_set = 0x00000;
    bitset<25> Cin = 0x00000;
    bitset<25> Sum = 0x00000;
    
    
    
    if ((unbiasA - unbiasB) > 0)
    {
        new_e_int = to_int(next.e) + dif;
        new_e_set = new_e_int;
        cout << new_e_set << " ";
        
        new_m_set = next.m>>dif;
        new_m_set[23-dif] = 1;
        for (int i = 0; i <= 22; i++)
            add_m_set[i] = m[i];
        add_m_set[23] = 1;
        
        cout << m << " " << dif << " " << new_m_set << endl;
    } 
    else if ((unbiasA - unbiasB) < 0)
    {
        new_e_int = to_int(e) + dif;
        new_e_set = new_e_int;
        cout << new_e_set<< " ";
        new_m_set = m>>dif;
        new_m_set[23-dif] = 1;
        for (int i = 0; i <= 22; i++)
            add_m_set[i] = next.m[i];
        add_m_set[23] = 1;
        cout << next.m << " " << dif << " " << new_m_set << endl;
    }
    
    // add mantissa
    for(int i = 0; i <= 24; i++)
    {
        Cin[i+1] = (new_m_set[i] & add_m_set[i]) | (new_m_set[i] & Cin[i]) | (add_m_set[i] & Cin[i]);
        Sum[i] = ((Cin[i]) ^ (new_m_set[i])) ^ (add_m_set[i]);
    }
    
    //post norm
    for (int i = 24; i >= 0; i--)
    {
        if (Cin[i] == 1) 
        {
            for (int j = i - 1; j >= 0; j--)
            {
                output.m[j-1] = Sum[j];
            }
            break;
        }
    }
    if (Cin[24] == 1)
    {
        new_e_int = to_int(new_e_set) + 1;
        output.e = new_e_int;
    }
    
    
    //final write
    for (int i = 31; i >= 23; i--)
    {
        output.FPval[i] = output.e[i];
    }
    for (int i = 22; i >= 0; i--)
    {
        output.FPval[i] = output.m[i];
    }
    
    ////debug
    //for(int i =24; i >=0; i--)
    //    cout << Cin[i];
    //cout << endl;
    //for(int i =24; i >=0; i--)
    //    cout << new_m_set[i];
    //cout << endl;
    //for(int i =24; i >=0; i--)
    //    cout << add_m_set[i];
    //cout << endl;
    //for(int i =24; i >=0; i--)
    //    cout << Sum[i];
    //cout << endl;
    //for(int i = 22; i >= 0; i--)
    //    cout << output.m[i];
    
    return output;
}