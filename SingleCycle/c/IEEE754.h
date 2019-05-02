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
        int to_int(bitset<8> input);
        int to_int(bitset<23> input);
        bitset<8> to_e_set(unsigned int input);
        bitset<23> to_m_set(unsigned int input);
        void print();
        float getfloat();
        
        IEEE754 operator=(IEEE754 next);
        IEEE754 operator+(IEEE754 next);
        //IEEE754 operator-(IEEE754 next);
        
    private:
        bitset<32> FPval;
        bool s;
        bitset<8> e;
        bitset<23> m;
};

#endif