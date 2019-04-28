#ifndef ALU_H_
#define ALU_H_

void alu(char aluop[4], float Rm, float Rn, float *Rd, int *zero, int *neg, int *overflow, int *carry, int *error);

#endif