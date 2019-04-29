#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define bitLength 32
#define memorySize 1024

/**
 * BASM: BAW Assembler
 * It take'a da source, and it make'a it runnable
 **/

char memory[memorySize][bitLength];
float data[memorySize];

int PC = 0;

/**
 * Summary: Takes given instruction and writes the bin rep to memory at the specified spot
 * Input: instruction char array, writeline location
 * Returns: instruction type
 * 
 *  R=0,D=1,I=2,B=3,S=4,N/H=5
 **/
int writeInstr(char ins[10], int writeLine){
    if (strcmp(ins, "SET") == 0){           strncpy(memory[writeLine], "00000001", 8); return 4;}
    else if (strcmp(ins, "LOAD") == 0) {    strncpy(memory[writeLine], "00000010", 8); return 1;}
    else if (strcmp(ins, "STORE") == 0) {   strncpy(memory[writeLine], "00000011", 8); return 1;}
    else if (strcmp(ins, "MOVE") == 0) {    strncpy(memory[writeLine], "00000100", 8); return 1;}
    else if (strcmp(ins, "FADD") == 0) {    strncpy(memory[writeLine], "00000101", 8); return 0;}
    else if (strcmp(ins, "FSUB") == 0) {    strncpy(memory[writeLine], "00000110", 8); return 0;}
    else if (strcmp(ins, "FNEG") == 0) {    strncpy(memory[writeLine], "00000111", 8); return 0;}
    else if (strcmp(ins, "FMUL") == 0) {    strncpy(memory[writeLine], "00001000", 8); return 0;}
    else if (strcmp(ins, "FDIV") == 0) {    strncpy(memory[writeLine], "00001001", 8); return 0;}
    else if (strcmp(ins, "FLOOR") == 0) {   strncpy(memory[writeLine], "00001010", 8); return 0;}
    else if (strcmp(ins, "CEIL") == 0) {    strncpy(memory[writeLine], "00001011", 8); return 0;}
    else if (strcmp(ins, "ROUND") == 0) {   strncpy(memory[writeLine], "00001100", 8); return 0;}
    else if (strcmp(ins, "FABS") == 0) {    strncpy(memory[writeLine], "00001101", 8); return 0;}
    else if (strcmp(ins, "MIN") == 0) {     strncpy(memory[writeLine], "00001110", 8); return 0;}
    else if (strcmp(ins, "MAX") == 0) {     strncpy(memory[writeLine], "00001111", 8); return 0;}
    else if (strcmp(ins, "POW") == 0) {     strncpy(memory[writeLine], "00010000", 8); return 2;}
    else if (strcmp(ins, "EXP") == 0) {     strncpy(memory[writeLine], "00010001", 8); return 0;}
    else if (strcmp(ins, "SQRT") == 0) {    strncpy(memory[writeLine], "00010010", 8); return 0;}
    else if (strcmp(ins, "B") == 0) {       strncpy(memory[writeLine], "00010011", 8); return 3;}
    else if (strcmp(ins, "BZ") == 0) {      strncpy(memory[writeLine], "00010100", 8); return 3;}
    else if (strcmp(ins, "BN") == 0) {      strncpy(memory[writeLine], "00010101", 8); return 3;}
    else if (strcmp(ins, "HLT") == 0) {     strncpy(memory[writeLine], "00010111", 8); return 5;}
    else {strncpy(memory[writeLine], "00010110", 8); return 5;} //default to nop for safty 
}

void memoryWrite(char data[],int word, int pos, int length){
    for (int i=0;i<length;i++){
        memory[word][i + pos] = data[i];
    }
    //printf("memwrite");
}

void printMem(){
    for (int i=0;i<20;i++){
        printf("%s\n", memory[i]);
    }
}

void writeRegisterID(char reg[3], int pos){
    int writePosition = PC +1;

    //printf("%d%d%d \n", reg[0], reg[1], reg[2]);
    if (reg[0] != 82){
        printf("Bad Register Parse, are they all caps?\n");
        return;
    }
    if (reg[1] == 48 && reg[2] == 127 ){ memoryWrite("0000", writePosition, 8, 4);          } //R0
    else if (reg[1] == 49 && reg[2] == 127) {memoryWrite("0001", writePosition, 8, 4);      } //R1
    else if (reg[1] == 50 && reg[2] == 127) {memoryWrite("0010", writePosition, 8, 4);      }
    else if (reg[1] == 51 && reg[2] == 127) {memoryWrite("0011", writePosition, 8, 4);      }
    else if (reg[1] == 52 && reg[2] == 127) {memoryWrite("0100", writePosition, 8, 4);      }
    else if (reg[1] == 53 && reg[2] == 127) {memoryWrite("0101", writePosition, 8, 4);      }
    else if (reg[1] == 54 && reg[2] == 127) {memoryWrite("0110", writePosition, 8, 4);      }
    else if (reg[1] == 55 && reg[2] == 127) {memoryWrite("0111", writePosition, 8, 4);      }
    else if (reg[1] == 56 && reg[2] == 127) {memoryWrite("1000", writePosition, 8, 4);      }
    else if (reg[1] == 57 && reg[2] == 127) {memoryWrite("1001", writePosition, 8, 4);      }
    else if (reg[1] == 49 && reg[2] == 48) {memoryWrite("1010", writePosition, 8, 4);     } //R10
    else if (reg[1] == 49 && reg[2] == 49) {memoryWrite("1011", writePosition, 8, 4);     } //R11
    else if (reg[1] == 49 && reg[2] == 50) {memoryWrite("1100", writePosition, 8, 4);     }
    else if (reg[1] == 49 && reg[2] == 51) {memoryWrite("1101", writePosition, 8, 4);     }
    else if (reg[1] == 49 && reg[2] == 52) {memoryWrite("1110", writePosition, 8, 4);     }
    else if (reg[1] == 49 && reg[2] == 53) {memoryWrite("1111", writePosition, 8, 4);     } //R15
}

void convertInstruction(char line[200], int writeLine){
    //get instruction
    char instr[10];
    int pos = 0;
    int instructionType = -1;

    for (int i=0; i< 10; i++){
        if (isspace(line[i]) != 0){
            //printf("%s\n", instr);
            instructionType = writeInstr(instr, writeLine);
            pos = i;
            break;
        } else {
            instr[i] = line[i];
        }
    }
    
    if (instructionType == 5){//if its a nop or halt, we are done
        return;
    }

    for (int i=pos; i+pos < 10; i++){//Write register 1
        char strReg[3];
        int k=0;
        if (line[i] != 9 && line[i] !=32){
            while(line[i] != 44){
                //printf("%c", line[i]);
                strReg[k] = line[i];
                k++;
                i++;
            }
            pos = i;

            //printf("ASD: %d%d%d \n", strReg[0], strReg[1], strReg[2]);
            writeRegisterID(strReg, i);
            //printf("\n");
            break;
        } else {
            instr[i] = line[i];
        }
        
    }
    /**
     * Now we do the same thing for inst 0,1,2,3,4 readign the registers shoudl be bout the same
     **/
}

int main(int argc, char* argv[]) {
    char const* const fileName = argv[1];
    FILE* file = fopen(fileName, "r");
    char line[200];//Max line in our files is ~170

    int dataStart = -1;
    int dataEnd = -1;
    while (fgets(line, sizeof(line), file)) {
        if (PC == 0){
            printf("lines of code loaded: %s \n", line);
            dataStart = atoi(line);
        }
        if (dataStart+1 == PC){
            printf("lines of data loaded: %s \n", line);
            //dataEnd = PC + atoi(line);
        }
        
        if (PC > 0 && PC < dataStart+1){//We have all code
            convertInstruction(line, PC+1);
        }



        PC++;
    }
    fclose(file);

    printMem();
    return 0;
}