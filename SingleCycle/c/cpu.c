#include <stdio.h>
#include <string.h>
#include "reg.h"
#include "alu.h"
#include "mem.h"


void singleCycle(){
    int PC = 0;
    int zero, neg, overflow, carry, error = 0;//Flag lines
    //do {
        //Fetch stage
        char optcode[9];
        memcpy(optcode, &getInstruction(PC)[0], 8);
        optcode[8] = '\0';
        printf("operation %s\n", optcode);

        if (strcmp(optcode, "00000110") == 0//sub
        || strcmp(optcode, "00000111") == 0//neg
        || strcmp(optcode, "00001000") == 0//mul
        || strcmp(optcode, "00000101") == 0//add
        || strcmp(optcode, "00001001") == 0//div
        || strcmp(optcode, "00001010") == 0//flr
        || strcmp(optcode, "00001011") == 0//cel
        || strcmp(optcode, "00001100") == 0//rnd
        || strcmp(optcode, "00001101") == 0//abs
        || strcmp(optcode, "00001110") == 0//min
        || strcmp(optcode, "00001111") == 0//max
        || strcmp(optcode, "00010000") == 0//pow
        || strcmp(optcode, "00010001") == 0//exp
        || strcmp(optcode, "00010010") == 0//sqr
        ){//We have an R type operation
            char Rm[5];
            memcpy(Rm, &getInstruction(PC)[8], 4);
            char Rn[5];
            memcpy(Rn, &getInstruction(PC)[24], 4);
            char Rd[5];
            memcpy(Rd, &getInstruction(PC)[28], 4);
            Rm[5] = '\0';
            Rn[5] = '\0';
            Rd[5] = '\0';
            
            alu(optcode, getReg(Rm), getReg(Rn), getRegRef(Rd), &zero, &neg, &overflow, &carry, &error);

            printf("Registers: %s,%s,%s", Rm, Rn, Rd);
        }
        //Decode stage
        //if I or branch type decode it
        // if set load and + 1
        // if branch take it
    //} while (2>1); //current op = 0 );
    
}

/**
 * Fetch Decode eXicute Memory Writeback
 * 
 **/
int main(){
    loadBin();
    
    singleCycle();

    /*
    printf("INS 0: %s", getInstruction(0));
    int zero, neg, overflow, carry, error = 0;//Flag lines

    *getRegRef("0000") = 15;//how to load a register by calling getRegRef
    *getRegRef("0001") = 30;

    printf("\n");
    alu("0010", getReg("0000"), getReg("0001"), getRegRef("0011"), &zero, &neg, &overflow, &carry, &error);//ALU call (how it will be done in the pipeline)
    printf("sub: %f z:%i neg:%i\n", getReg("0011"), zero, neg);
    printf("\n");
    */
    return 0;
}