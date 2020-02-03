#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os.path as osp
from enum import Enum
import argparse
import pdb


InstructionType = Enum('InstructionType', ('A_COMMAND', 'C_COMMAND', 'L_COMMAND'))

# Parser
class Parser(object):
    def __init__(self, src):
        self.src = src
        self.lines = open(src, 'r').readlines()
        self.lineCnt = len(self.lines)
        # fp is the file pointer which points to the last read pos
        self.fp = -1
        self.curCmd = None
        self.curCmdType = None
        self.fields = [""] * 3
    
    def reset(self):
        self.fp = -1
    
    def hasMoreCommands(self):
        return self.fp < self.lineCnt - 1
    
    def advance(self):
        self.fp += 1
        curLine = self.lines[self.fp]
        # remove comments prefix with //
        self.curCmd = curLine.split('//')[0].strip()
        if not self.curCmd and self.hasMoreCommands():
            self.advance()
        # else:
        #     if self.curCmd:
        #         print('current fp:', self.fp)
        #         print('current command:', self.curCmd)

    def commandType(self):
        if self.curCmd[0] == '@':
            self.curCmdType = InstructionType.A_COMMAND
        elif self.curCmd[0] == '(':
            self.curCmdType = InstructionType.L_COMMAND
        else:
            self.curCmdType = InstructionType.C_COMMAND
            # decompose fields
            self._decompose()
            # pdb.set_trace()
        return self.curCmdType

    def _decompose(self):
        self.fields = [""] * 3
        ingredient = self.curCmd
        if ';' in self.curCmd:
            ingredient, self.fields[2] = ingredient.split(';')
        if '=' in self.curCmd:
            self.fields[1], self.fields[0] = ingredient.split('=')
        else:
            # comp
            self.fields[0] = ingredient
        self.fields = list(map(str.strip, self.fields))

    def symbol(self):
        if self.curCmdType == InstructionType.A_COMMAND:
            return self.curCmd[1:].strip()
        elif self.curCmdType == InstructionType.L_COMMAND:
            return self.curCmd[1:-1].strip()
    
    def dest(self):
        if self.curCmdType != InstructionType.C_COMMAND:
            return None
        return self.fields[1]

    def comp(self):
        if self.curCmdType != InstructionType.C_COMMAND:
            return None
        return self.fields[0]

    def jump(self):
        if self.curCmdType != InstructionType.C_COMMAND:
            return None
        return self.fields[2]


class Coder(object):
    def __init__(self):
        pass

    def dest(self, d):
        bits = ['0'] * 3
        if 'A' in d:
            bits[0] = '1'
        if 'D' in d:
            bits[1] = '1'
        if 'M' in d:
            bits[2] = '1'
        return "".join(bits)

    def comp(self, c):
        a = '0'
        if 'M' in c:
            a = '1'
            c = c.replace('M', 'A')

        mapping = dict({
            ('0', '101010'),
            ('1', '111111'),
            ('-1', '111010'),
            ('D', '001100'),
            ('A', '110000'),
            ('!D', '001101'),
            ('!A', '110001'),
            ('-D', '001111'),
            ('-A', '110011'),
            ('D+1','011111'),
            ('A+1', '110111'),
            ('D-1', '001110'),
            ('A-1', '110010'),
            ('D+A', '000010'),
            ('D-A', '010011'),
            ('A-D', '000111'),
            ('D&A', '000000'),
            ('D|A', '010101')
        })
        return a + mapping[c]
    
    def jump(self, j):
        if j == 'JMP':
            return '111'
        elif j == 'JNE':
            return '101'
        bits = ['0'] * 3
        if 'L' in j:
            bits[0] = '1'
        if 'E' in j:
            bits[1] = '1'
        if 'G' in j:
            bits[2] = '1'
        return "".join(bits)


class SymbolTable(object):
    def __init__(self):
        self.table = dict({
            # virtual registers
            ('R0', '0'),
            ('R1', '1'),
            ('R2', '2'),
            ('R3', '3'),
            ('R4', '4'),
            ('R5', '5'),
            ('R6', '6'),
            ('R7', '7'),
            ('R8', '8'),
            ('R9', '9'),
            ('R10', '10'),
            ('R11', '11'),
            ('R12', '12'),
            ('R13', '13'),
            ('R14', '14'),
            ('R15', '15'),

            ('SCREEN', '16384'),
            ('KBD', '24576'),

            ('SP', '0'),
            ('LCL', '1'),
            ('ARG', '2'),
            ('THIS', '3'),
            ('THAT', '4')
        })
    
    def addEntry(self, symbol, address):
        self.table[symbol] = str(address)
    
    def contains(self, symbol):
        return symbol in self.table
    
    def getAddress(self, symbol):
        return self.table[symbol]


def firstPass(parser, symbolTable):
    nextAddr = 0
    while parser.hasMoreCommands():
        parser.advance()
        curCmdType = parser.commandType()
        if curCmdType == InstructionType.L_COMMAND:
            symbol = parser.symbol()
            symbolTable.addEntry(symbol, nextAddr);
        else:
            nextAddr += 1
            # print('%d: %s'% (nextAddr, parser.curCmd))
    # print(symbolTable.table)
    parser.reset()

def main():
    varSlot = 16
    parser = argparse.ArgumentParser()
    parser.add_argument('inputFile', type=str, help='the asm file to assembly')
    args = parser.parse_args()
    # print(args)
    srcName = args.inputFile
    baseName, suffix = osp.splitext(osp.basename(srcName))
    assert suffix.lower() == '.asm', '输入文件类型错误!'
    tgtName = baseName + '.hack'
    # tgt_f = open(tgtName, 'w')
    parser = Parser(srcName)
    coder = Coder()
    symbolTable = SymbolTable()
    firstPass(parser, symbolTable)
    with open(tgtName, 'w') as tgt_f:
        while parser.hasMoreCommands():
            parser.advance()
            curCmdType = parser.commandType()
            # print('curCmd:', parser.curCmd)
            if curCmdType == InstructionType.A_COMMAND:
                symbol = parser.symbol()
                # print('address or symbol is', symbol)
                if not symbol.isdigit():
                    # symbols: LABEL + existed variable
                    if symbolTable.contains(symbol):
                        symbol = symbolTable.getAddress(symbol)
                    else:
                        symbolTable.addEntry(symbol, varSlot)
                        symbol = varSlot
                        varSlot += 1
                
                binary = '0' + bin(int(symbol))[2:].zfill(15)
            
            elif curCmdType == InstructionType.C_COMMAND:
                dest = parser.dest()
                comp = parser.comp()
                jump = parser.jump()
                # print(dest, ':', comp, ':', jump)
                binary = '111' + coder.comp(comp) + coder.dest(dest) + coder.jump(jump)
            else:
                # L_COMMAND
                continue
            print(binary)
            tgt_f.write(binary + '\n')
            # pdb.set_trace()

if __name__ == '__main__':
    main()