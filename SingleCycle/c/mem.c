#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define bitLength 33//If we dont 33 it, we get buffer overflow
#define memorySize 1024

char memory[memorySize][bitLength];
float dataMemory[memorySize];

/**
 * Summary: returns a pointer to a specific instruction
 * Inputs: int memory location
 **/
char *getInstruction(int location){
    //strcpy(buffer, memory[location]);
    return strdup(memory[location]);
}

float getInstructionFloat(int location){
    return (float)atoi(strdup(memory[location]));
}

/**
 * Summary: Get data from a memory location
 * Inputs: int location
 **/
float getData(int location){
    return dataMemory[location];
}

/**
 * Write data to a memory location
 * Inputs: int location, float value
 **/
void writeData(int location, float value){
    dataMemory[location] = value;
}

/**
 * Summary: Loads the specificly made bin file called "input.bin" from the same directory
 **/
void loadBin(){
    FILE* file = fopen("./input.bin", "r");
    char line[35];//I like to use protection
    int loadData = 0;
    int instWriteIndex = 0;
    while (fgets(line, sizeof(line), file)) {
        //printf("%c\n", line[0]);
        
        if (loadData == 1){//Load the data
            char* pEnd;
            float loc = strtof (line, &pEnd);
            float val = strtof (pEnd, NULL);
            dataMemory[(int)loc] = val;
        } else if (line[0] == '='){//Skip the ='s
            loadData = 1;
        } else if (loadData == 0){//Load the instructions
            strcpy(memory[instWriteIndex], line);
            memory[instWriteIndex][32] = '\0';
            instWriteIndex++;
        }
    }
    fclose(file);
}

/*
int main(){
    loadBin();
    printf("INS: %s", getInstruction(0));
    printf("\n");
}*/