#ifndef IEEE754_H_
#define IEEE754_H_
#include <iostream>
#include <string>
#include <bitset>
#include <cmath>

using namespace std;

class IEEE754 {
    
    public:
        IEEE754();
        IEEE754(float f);
        void print();
        float getfloat();
        
    private:
        bitset<32> FPval;
};

#endif