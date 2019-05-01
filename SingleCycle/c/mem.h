#ifndef MEM_H_
#define MEM_H_

void loadBin();
void writeData(int location, float value);
float getData(int location);
char *getInstruction(int location);
float getInstructionFloat(int location);
void printDataMem();

#endif