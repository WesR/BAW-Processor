#include <stdio.h>
#include <string.h>
#include "reg.h"
#include "alu.h"
#include "mem.h"


/**
 * Fetch Decode eXicute Memory Writeback
 * 
 **/
int main(){
    loadBin();
    printf("INS 0: %s", getInstruction(0));
    int zero, neg, overflow, carry, error = 0;//Flag lines

    *getRegRef("0000") = 15;//how to load a register by calling getRegRef
    *getRegRef("0001") = 30;

    printf("\n");
    alu("0010", getReg("0000"), getReg("0001"), getRegRef("0011"), &zero, &neg, &overflow, &carry, &error);//ALU call (how it will be done in the pipeline)
    printf("sub: %f z:%i neg:%i\n", getReg("0011"), zero, neg);
    printf("\n");
    return 0;
}