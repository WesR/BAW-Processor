#include <stdio.h>
#include <string.h>
#include <math.h>

#define CONST_E 2.7182818284590452354

/**
 * This file contains all the logic for the ALU.
 * Input lines have data passed down (ex Rm or Rn).
 * Output lines are passed by refrence (pointers aka Rd or flags)
 **/


/**
 * Check for floating point overflow
 **/
void checkOverflow(float *Rd, int *overflow){
    if (isinf(*Rd)){
        *overflow = 1;
    }
}

/**
 * Check for floating point carryout
 **/
void checkCarry(float *Rd, int *carry){
    *carry = 0;
}

/**
 * Summery: Add an input, then place in Rd
 * Op: 0000
 * Inputs: Rm, Rd (destination) 
 **/
void alu_pass(float Rm, float *Rd) {
    *Rd = Rm;
}

/**
 * Summery: Add two inputs, then place in Rd
 * Op: 0001
 * Inputs: Rm, Rn, Rd (destination) 
 **/
void alu_add(float Rm, float Rn, float *Rd) {
    *Rd = Rm + Rn;
    printf("ALU ADD\n");
}

/**
 * Summery: Subtract two inputs, then place in Rd
 * Op: 0010
 * Inputs: Rm, Rn, Rd (destination) 
 **/
void alu_sub(float Rm, float Rn, float *Rd) {
    *Rd = Rm - Rn;
    printf("ALU SUB\n");
}

/**
 * Summery: Negates an input, then place in Rd
 * Op: 0011
 * Inputs: Rm, Rd (destination) 
 **/
void alu_neg(float Rm, float *Rd) {
    float neg1 = -1;
    *Rd = Rm * neg1;
    printf("ALU NEG\n");
}

/**
 * Summery: Multiply two inputs, then place in Rd
 * Op: 0100
 * Inputs: Rm, Rn, Rd (destination) 
 **/
void alu_mul(float Rm, float Rn, float *Rd) {
    *Rd = Rm * Rn;
    printf("ALU MUL\n");
}

/**
 * Summery: Divide two inputs, then place in Rd
 * Op: 0101
 * Inputs: Rm, Rn, Rd (destination) 
 **/
void alu_div(float Rm, float Rn, float *Rd) {
    *Rd = Rn / Rm;
    printf("ALU DIV\n");
}

/**
 * Summery: floors an input, then places in Rd
 * Op: 0110
 * Inputs: Rm, Rd (destination) 
 **/
void alu_flr(float Rm, float *Rd) {
    *Rd = floorf(Rm);
    printf("ALU FLOOR\n");
}

/**
 * Summery: Ceiling function an input, then places in Rd
 * Op: 0111
 * Inputs: Rm, Rd (destination) 
 **/
void alu_cel(float Rm, float *Rd) {
    *Rd = ceilf(Rm);
    printf("ALU CEIL\n");
}

/**
 * Summery: Rounds an input, then places in Rd
 * Op: 1000
 * Inputs: Rm, Rd (destination) 
 **/
void alu_rnd(float Rm, float *Rd) {
    *Rd = roundf(Rm);
    printf("ALU ROUND\n");
}

/**
 * Summery: Absolute value of an input, then places in Rd
 * Op: 1001
 * Inputs: Rm, Rd (destination) 
 **/
void alu_abs(float Rm, float *Rd) {
    *Rd = fabsf(Rm);
    printf("ALU ABS\n");
}

/**
 * Summery: Returns the smallest of the two inputs, then places in Rd
 * Op: 1010
 * Inputs: Rm, Rn, Rd (destination) 
 **/
void alu_min(float Rm, float Rn, float *Rd) {
    if (Rm < Rn){
        *Rd = Rm;
    } else {
        *Rd = Rn;
    }
    printf("ALU MIN\n");
}

/**
 * Summery: Returns the largest of the two inputs, then places in Rd
 * Op: 1011
 * Inputs: Rm, Rn, Rd (destination) 
 **/
void alu_max(float Rm, float Rn, float *Rd) {
    if (Rm > Rn){
        *Rd = Rm;
    } else {
        *Rd = Rn;
    }
    printf("ALU MAX\n");
}

/**
 * Summery: Returns Rm^power, placed in Rd
 * Op: 1100
 * Inputs: Rm, power (int), Rd (destination)
 **/
void alu_pow(float Rm, int power, float *Rd) {
    *Rd = powf(Rm, power);
    printf("ALU POW\n");
}

/**
 * Summery: Returns e^Rm, placed in Rd
 * Op: 1101
 * Inputs: Rm, Rd (destination)
 **/
void alu_exp(float Rm, float *Rd) {
    *Rd = powf(CONST_E, Rm);
    printf("ALU EXP\n");
}

/**
 * Summery: Returns sqrt(Rm), placed in Rd
 * Op: 1110
 * Inputs: Rm, Rd (destination)
 **/
void alu_sqr(float Rm, float *Rd) {
    *Rd = sqrtf(Rm);
    printf("ALU SQRT\n");
}

/**
 * Summery: The ALU logic. 
 * Input: alu opcode | rm, rn, *rd | Zero, Neg, Overflow, Carry, Error
 **/
void alu(char aluop[8], float Rm, float Rn, float *Rd, int *zero, int *neg, int *overflow, int *carry, int *error) {

    //Reset all flags
    *zero = 0;
    *neg = 0;
    *overflow = 0;
    *carry = 0;
    *error = 0;

    //Operations
    if (strcmp(aluop, "00000101") == 0) {
        alu_add(Rm, Rn, Rd);
        checkOverflow(Rd, overflow);
        checkCarry(Rd, carry);
    } else if (strcmp(aluop, "00000110") == 0) {
        alu_sub(Rm, Rn, Rd);
        checkOverflow(Rd, overflow);
        checkCarry(Rd, carry);
    } else if (strcmp(aluop, "00000111") == 0) {
        alu_neg(Rm, Rd);
    } else if (strcmp(aluop, "00001000") == 0) {
        alu_mul(Rm, Rn, Rd);
        checkOverflow(Rd, overflow);
        checkCarry(Rd, carry);
    } else if (strcmp(aluop, "00001001") == 0) {
        if (Rn == 0){ 
            *error = 1;
        } else {       
            alu_div(Rm, Rn, Rd);
            checkOverflow(Rd, overflow);
            checkCarry(Rd, carry);
        }
    } else if (strcmp(aluop, "00001010") == 0) {
        alu_flr(Rm, Rd);
    } else if (strcmp(aluop, "00001011") == 0) {
        alu_cel(Rm, Rd);
    } else if (strcmp(aluop, "00001100") == 0) {
        alu_rnd(Rm, Rd);
    } else if (strcmp(aluop, "00001101") == 0) {
        alu_abs(Rm, Rd);
    } else if (strcmp(aluop, "00001110") == 0) {
        alu_min(Rm, Rn, Rd);
    } else if (strcmp(aluop, "00001111") == 0) {
        alu_max(Rm, Rn, Rd);
    } else if (strcmp(aluop, "00010000") == 0) {
        alu_pow(Rm, Rn, Rd);
        checkOverflow(Rd, overflow);
        checkCarry(Rd, carry);
    } else if (strcmp(aluop, "00010001") == 0) {
        alu_exp(Rm, Rd);
        checkOverflow(Rd, overflow);
        checkCarry(Rd, carry);
    } else if (strcmp(aluop, "00010010") == 0) {
        if (Rm < 0){ 
            *error = 1;
        } else {
            alu_sqr(Rm, Rd);
            checkOverflow(Rd, overflow);
            checkCarry(Rd, carry);
        }
    } else {//if (strcmp(aluop, "00000000") == 0){
        alu_pass(Rm, Rd);
    }
    
    //Set flags
    if (*Rd == 0){  *zero = 1;  }
    if (*Rd < 0) {  *neg = 1;   }

}

/**
 * Test code
int main(){
    float register1 00001000011000000000000000110000
    float register2 00001000011000000000000000110000
    float register3;00001000011000000000000000110000
    int zero, neg, overflow, carry, error = 0;

    printf("\n");
    alu("0010", register1, register2, &register3, &zero, &neg, &overflow, &carry, &error);
    printf("sub: %f z:%i neg:%i\n", register3, zero, neg);
    alu("0100", register1, register2, &register3, &zero, &neg, &overflow, &carry, &error);
    printf("mul: %f z:%i neg:%i\n", register3, zero, neg);
    //overflow 3.402823e38f
    register1 = 3.402823e38f;
    register2 = 3.402823e38f;
    alu("0001", register1, register2, &register3, &zero, &neg, &overflow, &carry, &error);
    printf("add: %f z:%i neg:%i ovf:%i\n", register3, zero, neg, overflow);
    register1 = -12;
    alu("1110", register1, register2, &register3, &zero, &neg, &overflow, &carry, &error);
    printf("sqr: %f z:%i neg:%i ovf:%i err:%i\n", register3, zero, neg, overflow, error);
    printf("\n");
}
**/