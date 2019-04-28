#include <stdio.h>
#include <string.h>

float registers[16];

/**
 * This file contains the registers for the processors.
 * Call getReg to get just the value,
 * Call getRegRef for the pointer, so you can write a new value
 **/


/**
 * Summery: Returns the values in a specific register
 * Input: the four bit ID of the register
 **/
float getReg(char regID[4]){

    if (strcmp(regID, "0000") == 0){    return registers[0];    }
    else if (strcmp(regID, "0001") == 0) {  return registers[1];    }
    else if (strcmp(regID, "0010") == 0) {  return registers[2];    }
    else if (strcmp(regID, "0011") == 0) {  return registers[3];    }
    else if (strcmp(regID, "0100") == 0) {  return registers[4];    }
    else if (strcmp(regID, "0101") == 0) {  return registers[5];    }
    else if (strcmp(regID, "0110") == 0) {  return registers[6];    }
    else if (strcmp(regID, "0111") == 0) {  return registers[7];    }
    else if (strcmp(regID, "1000") == 0) {  return registers[8];    }
    else if (strcmp(regID, "1001") == 0) {  return registers[9];    }
    else if (strcmp(regID, "1010") == 0) {  return registers[10];    }
    else if (strcmp(regID, "1011") == 0) {  return registers[11];    }
    else if (strcmp(regID, "1100") == 0) {  return registers[12];    }
    else if (strcmp(regID, "1101") == 0) {  return registers[13];    }
    else if (strcmp(regID, "1110") == 0) {  return registers[14];    }
    else if (strcmp(regID, "1111") == 0) {  return registers[15];    }
    
}

/**
 * Summery: Returns the pointer to a specific register
 * Input: the four bit ID of the register
 **/
float *getRegRef(char regID[4]){

    if (strcmp(regID, "0000") == 0){    return &registers[0];    }
    else if (strcmp(regID, "0001") == 0) {  return &registers[1];    }
    else if (strcmp(regID, "0010") == 0) {  return &registers[2];    }
    else if (strcmp(regID, "0011") == 0) {  return &registers[3];    }
    else if (strcmp(regID, "0100") == 0) {  return &registers[4];    }
    else if (strcmp(regID, "0101") == 0) {  return &registers[5];    }
    else if (strcmp(regID, "0110") == 0) {  return &registers[6];    }
    else if (strcmp(regID, "0111") == 0) {  return &registers[7];    }
    else if (strcmp(regID, "1000") == 0) {  return &registers[8];    }
    else if (strcmp(regID, "1001") == 0) {  return &registers[9];    }
    else if (strcmp(regID, "1010") == 0) {  return &registers[10];    }
    else if (strcmp(regID, "1011") == 0) {  return &registers[11];    }
    else if (strcmp(regID, "1100") == 0) {  return &registers[12];    }
    else if (strcmp(regID, "1101") == 0) {  return &registers[13];    }
    else if (strcmp(regID, "1110") == 0) {  return &registers[14];    }
    else if (strcmp(regID, "1111") == 0) {  return &registers[15];    }

}