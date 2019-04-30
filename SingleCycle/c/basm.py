import sys

mem = dict()
dataMem = dict()
memOffset = 0
'''
Some register converter
'''
def convertReg2Bin(reg):
    if (reg == 'R0'):
        return "0000"
    if (reg == 'R1'):
        return "0001"
    if (reg == 'R2'):
        return "0010"
    if (reg == 'R3'):
        return "0011"
    if (reg == 'R4'):
        return "0100"
    if (reg == 'R5'):
        return "0101"
    if (reg == 'R6'):
        return "0110"
    if (reg == 'R7'):
        return "0111"
    if (reg == 'R8'):
        return "1000"
    if (reg == 'R9'):
        return "1001"
    if (reg == 'R10'):
        return "1010"
    if (reg == 'R11'):
        return "1011"
    if (reg == 'R12'):
        return "1100"
    if (reg == 'R13'):
        return "1101"
    if (reg == 'R14'):
        return "1110"
    if (reg == 'R15'):
        return "1111"

'''
defs to write each instruction type
'''

def writeTypeRegister(writePos, line):
    mem[writePos] += convertReg2Bin(line[2].strip(','))
    mem[writePos] += '000000000000'
    
    if (line[3] == ';'):
        mem[writePos] += '0000'
    else:
        mem[writePos] += convertReg2Bin(line[3].strip(','))
    
    mem[writePos] += convertReg2Bin(line[1].strip(','))

def writeTypeData(writePos, line):
    mem[writePos] += convertReg2Bin(line[2].strip(','))
    mem[writePos] += '0000000000000000'
    mem[writePos] += convertReg2Bin(line[1].strip(','))

def writeTypeImmediate(writePos, line):
    mem[writePos] += convertReg2Bin(line[2].strip(','))
    mem[writePos] += '{0:016b}'.format(int(line[3].strip(',').strip('#')))
    mem[writePos] += convertReg2Bin(line[1].strip(','))

def writeTypeCBranch(writePos, line):
    mem[writePos] += convertReg2Bin(line[1].strip(','))
    mem[writePos] += '{0:020b}'.format(int(line[2].strip(',').strip('#')))

def writeTypeBranch(writePos, line):
    #mem[writePos] += convertReg2Bin(line[1].strip(','))
    mem[writePos] += '{0:024b}'.format(int(line[1].strip(',').strip('#')))

def writeTypeSet(writePos, line):
    mem[writePos] += convertReg2Bin(line[1].strip(','))
    mem[writePos] += '00000000000000000000'
    mem[writePos+1] = str(line[2].strip(',').strip('#'))

def programMem(writePos, line):
    global mem
    global memOffset

    writePos += memOffset

    if (len(line) == 0):
        return

    if (line[0] == "SET"):
        mem[writePos] = '00000001'
        writeTypeSet(writePos, line)
        memOffset +=1
    elif (line[0] == "LOAD"):
        mem[writePos] = '00000010'
        writeTypeData(writePos, line)
    elif (line[0] == "STORE"):
        mem[writePos] = '00000011'
        writeTypeData(writePos, line)
    elif (line[0] == "MOVE"):
        mem[writePos] = '00000100'
        writeTypeRegister(writePos, line)
    elif (line[0] == "FADD"):
        mem[writePos] = '00000101'
        writeTypeRegister(writePos, line)
    elif (line[0] == "FSUB"):
        mem[writePos] = '00000110'
        writeTypeRegister(writePos, line)
    elif (line[0] == "FNEG"):
        mem[writePos] = '00000111'
        writeTypeRegister(writePos, line)
    elif (line[0] == "FMUL"):
        mem[writePos] = '00001000'
        writeTypeRegister(writePos, line)
    elif (line[0] == "FDIV"):
        mem[writePos] = '00001001'
        writeTypeRegister(writePos, line)
    elif (line[0] == "FLOOR"):
        mem[writePos] = '00001010'
        writeTypeRegister(writePos, line)
    elif (line[0] == "CEIL"):
        mem[writePos] = '00001011'
        writeTypeRegister(writePos, line)
    elif (line[0] == "ROUND"):
        mem[writePos] = '00001100'
        writeTypeRegister(writePos, line)
    elif (line[0] == "FABS"):
        mem[writePos] = '00001101'
        writeTypeRegister(writePos, line)
    elif (line[0] == "MIN"):
        mem[writePos] = '00001110'
        writeTypeRegister(writePos, line)
    elif (line[0] == "MAX"):
        mem[writePos] = '00001111'
        writeTypeRegister(writePos, line)
    elif (line[0] == "POW"):
        mem[writePos] = '00010000'
        writeTypeImmediate(writePos, line)
    elif (line[0] == "EXP"):
        mem[writePos] = '00010001'
        writeTypeRegister(writePos, line)
    elif (line[0] == "SQRT"):
        mem[writePos] = '00010010'
        writeTypeRegister(writePos, line)
    elif (line[0] == "B"):
        mem[writePos] = '00010011'
        writeTypeBranch(writePos, line)
    elif (line[0] == "BZ"):
        mem[writePos] = '00010100'
        writeTypeCBranch(writePos, line)
    elif (line[0] == "BN"):
        mem[writePos] = '00010101'
        writeTypeCBranch(writePos, line)
    elif (line[0] == "HLT"):
        mem[writePos] = '00010111' + '000000000000000000000000'
    else:
        mem[writePos] = '00010110' + '000000000000000000000000'

def programData(line):
    dataMem[len(dataMem)] = line.replace("<", "").split('>')[0] + ':' + line.replace("<", "").split('>')[1]

def printFullMem():
    global mem
    print("Instr Memory")
    for c in range(0, len(mem)):
        print(mem[c])
    print("Data Mem")
    for c in range(0, len(dataMem)):
        print(dataMem[c])

def print2Bin():
    dabin = open("input.bin", "w")

    for k, v in mem.items():
        dabin.write(str(v)+"\n")
    dabin.write("================================\n")
    for k, v in dataMem.items():
        dabin.write(str(v)+"\n")
    dabin.close()

if __name__ == '__main__':
    instrLocation = 0
    with open(sys.argv[1]) as f:
        for line in f:
            #we are only going to pass process memory
            if (len(line.split()) == 1 and line.split()[0] != 'HALT'):
                #if contais < is mem
                if ('<' in line):
                    programData(line)
                else:
                    print("Reading in " + line.strip() + " lines.")
            else:
                programMem(instrLocation, line.split())
                #print(line.split())
                instrLocation+=1
    #printFullMem()
    print2Bin()