#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "reg.h"
#include "alu.h"
#include "mem.h"

int strbin2i( char* s) {
    int n = 0;
    for (int i=strlen(s); i > 1; i--){
        printf("|%d|", i);
        if (s[i] == '1'){
            n+=i*2;
        }
    }
    return n;
}

void singleCycle(){
    int PC = 0;
    int zero, neg, overflow, carry, error = 0;//Flag lines
    
    do {
        printf("\nPC: %d\n", PC);
        //Fetch stage
        char optcode[9];
        memcpy(optcode, &getInstruction(PC)[0], 8);
        optcode[8] = '\0';
        printf("operation %s\n", optcode);

        if (strcmp(optcode, "00010110") == 0){//nop
            printf("NOP");
        }

        if (strcmp(optcode, "00010111") == 0){//nop
            printf("HALT\n");
            printRegisters();
            exit(0);
        }

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
        || strcmp(optcode, "00000100") == 0//Move (if this breaks, it might be beacuse we just let the alu else catch it)
        ){//We have an R type operation
            char Rm[5];
            memcpy(Rm, &getInstruction(PC)[8], 4);
            char Rn[5];
            memcpy(Rn, &getInstruction(PC)[24], 4);
            char Rd[5];
            memcpy(Rd, &getInstruction(PC)[28], 4);
            Rm[4] = '\0';
            Rn[4] = '\0';
            Rd[4] = '\0';
            
            //setReg("0000", 1212);

            alu(optcode, getReg(Rm), getReg(Rn), getRegRef(Rd), &zero, &neg, &overflow, &carry, &error);
            printf("Registers: %s,%s,%s", Rm, Rn, Rd);
        }

        if (strcmp(optcode, "00000010") == 0){//Load
            //setReg("0000", 100);
            //writeData(getReg("0000"), 13.37);
            char Rm[5];
            memcpy(Rm, &getInstruction(PC)[8], 4);
            char Op[3];
            memcpy(Op, &getInstruction(PC)[26], 2);
            char Rd[5];
            memcpy(Rd, &getInstruction(PC)[28], 4);
            Rm[4] = '\0';
            Op[2] = '\0';
            Rd[4] = '\0';
            //d = mem[rm]
            
            //printf("||%s||", getInstruction(PC));
            //printf("~~%f~~", getReg(Rm));
            
            //printRegisters();
            setReg(Rd, getData((int)getReg(Rm)));
            //*getRegRef(Rd) = getData((int)getReg(Rm));
            //printRegisters();
        }

        if (strcmp(optcode, "00000011") == 0){//Store
            char Rm[5];
            memcpy(Rm, &getInstruction(PC)[8], 4);
            char Op[3];
            memcpy(Op, &getInstruction(PC)[26], 2);
            char Rd[5];
            memcpy(Rd, &getInstruction(PC)[28], 4);
            Rm[4] = '\0';
            Op[2] = '\0';
            Rd[4] = '\0';
            
            writeData(getReg(Rd), getReg(Rm));//Writes into location Rd, valuein Rm
        }
        
        if (strcmp(optcode, "00000001") == 0){//Set
            char Rm[5];
            memcpy(Rm, &getInstruction(PC)[8], 4);
            Rm[4] = '\0';

            setReg(Rm, getInstructionFloat(PC+1));
            //setReg(Rm, 100.0);
            //printf("LL:%fLL\n", getInstructionFloat(PC+1));
            PC++;//We also need to pass over the data
            //printRegisters();
        }

        if (strcmp(optcode, "00010011") == 0){//Unc Branch
            char Loc[20];
            memcpy(Loc, &getInstruction(PC)[8], 24);
            Loc[19] = '\0';

            //printf("PC = %d\n", PC);
            PC = atoi(Loc);
            printf("Branched to PC = %d\n", PC);
        }

        if (strcmp(optcode, "00010100") == 0){//Branch Zero
            char Loc[20];
            memcpy(Loc, &getInstruction(PC)[8], 24);
            char Rm[5];
            memcpy(Rm, &getInstruction(PC)[8], 4);
            Loc[19] = '\0';
            Rm[4] = '\0';

            //printf("PC = %d\n", PC);
            if (getReg(Rm) == 0){
                PC = atoi(Loc);
            }
            printf("Branched to PC = %d\n", PC);
        }

        if (strcmp(optcode, "00010101") == 0){//Branch Zero
            char Loc[20];
            memcpy(Loc, &getInstruction(PC)[8], 24);
            char Rm[5];
            memcpy(Rm, &getInstruction(PC)[8], 4);
            Loc[19] = '\0';
            Rm[4] = '\0';

            //printf("PC = %d\n", PC);
            if (getReg(Rm) < 0){
                PC = atoi(Loc);
            }
            printf("Branched to PC = %d\n", PC);
        }

        //Decode stage
        //if I or branch type decode it
        // if set load and + 1
        // if branch take it
        PC++;
    } while (2>1); //current op = 0 );
    
}

/**
 * Fetch Decode eXicute Memory Writeback
 * 
 **/
int main(){
    loadBin();
    
    printDataMem();
    //printf("was%d|", strbin2i("1"));
    singleCycle();
    //printRegisters();

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