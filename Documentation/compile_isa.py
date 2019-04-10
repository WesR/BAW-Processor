import csv

class globalVars:
    def __init__(self, instruction=str(), asm=str(), opcode=str(), formatType=str(), desc=str(), operation=str(), ALUCycles=str()):
        self.apiKeys = apiKeys
        self.instruction = instruction
        self.asm = asm
        self.opcode = opcode
        self.formatType = formatType
        self.selfdesc = selfdesc
        self.operation = operation
        self.ALUCycles = ALUCycles

def textFormat(input):
    #find and replace hash tags
    #if len(input) > 30:
    #    input = input[:30] + '\\newline ' + input[30:]
    return input.replace('←','$\leftarrow$ ').replace('#', '\#').replace('_', '\_').replace('^', '\\textasciicircum ').replace('√', '$\surd$ ')

def printings(instruction, asmExample, asm, opcode, formatType, desc, operation, ALUCycles):
    print('\subsubsection{'+instruction+'}')
    print('\\begin{table}[!h]')
    print('\centering')
    print('\caption*{'+asm+'}')
    print('\\begin{tabular}{llllll}')
    print('ASM & opcode & Format & Description & Operation & ALU Cycles \\\ \hline')
    print('\multicolumn{1}{|c|}{'+asm+'} & \multicolumn{1}{c|}{'+opcode+'} & \multicolumn{1}{c|}{'+formatType+'} & \DescEntry{'+desc+'} \\vline & \multicolumn{1}{c|}{'+operation+'} & \multicolumn{1}{c|}{'+ALUCycles+'} \TBstrut \\\[1em] \hline')
    print('\end{tabular}')
    print('\end{table}')
    print('')
    print('\\begin{itemize}')
    print('    \setlength{\parskip}{0pt}')
    print('    \setlength{\itemsep}{0pt plus 1pt}')
    print('    \setlength{\itemindent}{-4mm}')
    print('    \item[] \\textbf{ASM Example:} ' + asmExample)
    print('\end{itemize}')
    print('\\begin{itemize}')
    print('    \setlength{\parskip}{0pt}')
    print('    \setlength{\itemsep}{0pt plus 1pt}')
    print('    \setlength{\itemindent}{7mm}')
    print('    \item [\\textbf{Flags}]')
    print('    \item Zero')
    print('    \item Negitive')
    print('    \item Error')
    print('\end{itemize}')
    print('')

def loadCSV():
    with open('def.csv') as cfile:
        csvReader = csv.reader(cfile)
        for instr in csvReader:
            #print(instr[5])
            printings(textFormat(instr[0]), textFormat(instr[1]), textFormat(instr[5]), textFormat(instr[6]), textFormat(instr[7]), textFormat(instr[3]), textFormat(instr[2]), textFormat(instr[4]))


if __name__ == '__main__':
    loadCSV()