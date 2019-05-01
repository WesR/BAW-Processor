#ifndef REG_H_
#define REG_H_

float getReg(char regID[4]);
float *getRegRef(char regID[4]);
void printRegisters();
void setReg(char regID[4], float val);

#endif