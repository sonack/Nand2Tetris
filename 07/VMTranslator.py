#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os.path as osp
from enum import Enum
import argparse
import time
import pdb

VMCmdType = Enum(
    'VMCmdType', (
        'C_ARITHMETIC',
        'C_PUSH',
        'C_POP',
        'C_LABEL',
        'C_GOTO',
        'C_IF',
        'C_FUNCTION',
        'C_RETURN',
        'C_CALL'
        )
    )

# Parser
class Parser(object):
    def __init__(self, src):
        self.src = src
        self.lines = open(src, 'r').readlines()
        self.lineCnt = len(self.lines)
        # fp is the file pointer which points to the last read pos
        self.fp = -1
        self.preFP = -1
        self.curCmd = None
        self.preCmd = None
        self.curCmdType = None
        self.op = None
        self.args = None
    
    def reset(self):
        self.fp = -1
    
    def hasMoreCommands(self):
        # pdb.set_trace()
        self.preFP = self.fp + 1
        while self.preFP < self.lineCnt:
            preLine = self.lines[self.preFP]
            self.preCmd = preLine.split('//')[0].strip()
            if self.preCmd:
                break
            self.preFP += 1
        # print('has_more_cmd')
        # pdb.set_trace()
        return self.preFP < self.lineCnt
    
    # must called if hasMoreCommands() returns True
    def advance(self):
        self.fp = self.preFP
        curLine = self.lines[self.fp]
        # remove comments prefix with //
        # self.curCmd = curLine.split('//')[0].strip()
        self.curCmd = self.preCmd
        # if not self.curCmd and self.hasMoreCommands():
        #     self.advance()
        # elif self.curCmd:
        #     print('self.curCmd:', self.curCmd)
        #     pdb.set_trace()
        decomp = self.curCmd.split()
        self.op = decomp[0]
        if len(decomp) > 1:
            # In project7, then it will be PushPop Type
            self.args = decomp[1:]
        else:
            self.args = [self.op, None]

    def commandType(self):
        mapping = dict({
            ('push', VMCmdType.C_PUSH),
            ('pop', VMCmdType.C_POP),
        })
        return mapping.get(self.op, VMCmdType.C_ARITHMETIC)

    def arg1(self):
        return self.args[0]

    def arg2(self):
        if self.arg1() == 'static':
            self.args[1] = osp.splitext(osp.basename(self.src))[0] + '.' + self.args[1]
        return self.args[1]
    
    def opcode(self):
        return self.op

# Coder
class Coder(object):
    def __init__(self, tgt):
        # super(Coder, self).__init__()
        self.tgt = tgt
        self.f = open(tgt, 'w')
        self.asmSnippets = []
        self.seg2sym = dict({
            ('local', 'LCL'),
            ('argument', 'ARG'),
            ('this', 'THIS'),
            ('that', 'THAT'),
            ('temp', '5'),
        })
        self.cmpCnt = {
                'eq': 0,
                'gt': 0,
                'lt': 0,
        }

    def _changeSP(self, inc = True):
        self.asmSnippets.append('@SP')
        self.asmSnippets.append('M=M+1' if inc else 'M=M-1')

    def writeArithmetic(self, op):
        self.asmSnippets.clear()
        self.asmSnippets.append('// {}'.format(op))
        if op in ['neg', 'not']:
            self.asmSnippets.append('@SP')
            self.asmSnippets.append('A=M-1')
            self.asmSnippets.append('M=-M' if op == 'neg' else 'M=!M')
        # judgement logic command
        else:
            # sp--
            self._changeSP(inc = False)
            
            # 比较指令
            if op in ['eq', 'gt', 'lt']:
                label_id = op.upper() + '_' + str(self.cmpCnt[op]);
                self.cmpCnt[op] += 1
                self.asmSnippets.append('@SP')
                self.asmSnippets.append('A=M')
                self.asmSnippets.append('D=M')
                self.asmSnippets.append('A=A-1')
                self.asmSnippets.append('D=M-D')
                self.asmSnippets.append('@TRUE_{}'.format(label_id))
                self.asmSnippets.append('D; {}'.format('J' + op.upper()))

                # cond false
                self.asmSnippets.append('@SP')
                self.asmSnippets.append('A=M-1')
                self.asmSnippets.append('M=0')
                # jump over true
                self.asmSnippets.append('@CONT_{}'.format(label_id))
                self.asmSnippets.append('0;JMP')

                # cond true
                self.asmSnippets.append('(TRUE_{})'.format(label_id))
                self.asmSnippets.append('@SP')
                self.asmSnippets.append('A=M-1')
                self.asmSnippets.append('M=-1')
                self.asmSnippets.append('(CONT_{})'.format(label_id))
            else:
                # op in ['add', 'sub', 'and', 'or']
                self.asmSnippets.append('@SP')
                self.asmSnippets.append('A=M')
                self.asmSnippets.append('D=M')
                self.asmSnippets.append('A=A-1')
                if op == 'add':            
                    self.asmSnippets.append('M=D+M')
                elif op == 'sub':
                    self.asmSnippets.append('M=M-D')
                elif op == 'and':
                    self.asmSnippets.append('M=D&M')
                elif op == 'or':
                    self.asmSnippets.append('M=D|M')

        self.write()
    
    def writePushPop(self, op, segment, index):
        self.asmSnippets.clear()
        self.asmSnippets.append('// {} {} {}'.format(op, segment, index))
        if op == 'push':
            # *sp = *(baseSym + offset)
            # sp++
            if segment in self.seg2sym:
                segBase = self.seg2sym[segment]
                # offset
                self.asmSnippets.append('@{}'.format(index))
                self.asmSnippets.append('D=A')
                # rhs, D = *(base + offset)
                self.asmSnippets.append('@{}'.format(segBase))
                if segment == 'temp':
                    self.asmSnippets.append('A=D+A')
                else:
                    self.asmSnippets.append('A=D+M')
                self.asmSnippets.append('D=M')
            elif segment == 'constant':
                self.asmSnippets.append('@{}'.format(index))
                self.asmSnippets.append('D=A')
            elif segment == 'static':
                self.asmSnippets.append('@{}'.format(index))
                self.asmSnippets.append('D=M')
            elif segment == 'pointer':
                # index = 0 or 1
                where = 'THIS' if index == '0' else 'THAT'
                self.asmSnippets.append('@{}'.format(where))
                self.asmSnippets.append('D=M')
            # push
            # *sp = D
            self.asmSnippets.append('@SP')
            self.asmSnippets.append('A=M')
            self.asmSnippets.append('M=D')
            # sp++
            self._changeSP()
        elif op == 'pop':
            self._changeSP(inc = False)
            # get *SP
            self.asmSnippets.append('@SP')
            self.asmSnippets.append('A=M')
            self.asmSnippets.append('D=M')
            self.asmSnippets.append('@tmp')
            self.asmSnippets.append('M=D')

            if segment in self.seg2sym:
                segBase = self.seg2sym[segment]
                # offset
                self.asmSnippets.append('@{}'.format(index))
                self.asmSnippets.append('D=A')
                # lhs, *(base + offset)
                self.asmSnippets.append('@{}'.format(segBase))
                if segment == 'temp':
                    self.asmSnippets.append('D=D+A')
                else:
                    self.asmSnippets.append('D=D+M')
            elif segment == 'static':
                self.asmSnippets.append('@{}'.format(index))
                self.asmSnippets.append('D=A')
            elif segment == 'pointer':
                # index = 0 or 1
                where = 'THIS' if index == '0' else 'THAT'
                self.asmSnippets.append('@{}'.format(where))
                self.asmSnippets.append('D=A')

            self.asmSnippets.append('@addr')
            self.asmSnippets.append('M=D')
            self.asmSnippets.append('@tmp')
            self.asmSnippets.append('D=M')
            self.asmSnippets.append('@addr')
            self.asmSnippets.append('A=M')
            self.asmSnippets.append('M=D')
        self.write()
    
    def write(self):
        self.f.write('\n'.join(self.asmSnippets))
        self.f.write('\n')

        # print('\n'.join(self.asmSnippets))
    
    def close(self):
        self.f.close()
    



def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('inputFile', type=str, default='MemoryAccess/BasicTest/BasicTest.vm', help='the vm file to translate')
    args = parser.parse_args()
    # print(args)
    srcName = args.inputFile
    baseName, suffix = osp.splitext(osp.basename(srcName))
    assert suffix.lower() == '.vm', '输入文件类型错误!'
    # tgtName = baseName + '.asm'
    tgtName = srcName.replace('.vm', '.asm')
    print('Save to {}.'.format(tgtName))
    # tgt_f = open(tgtName, 'w')
    parser = Parser(srcName)
    coder = Coder(tgtName)
    while parser.hasMoreCommands():
        parser.advance()
        # print('>', parser.curCmd)
        curCmdType = parser.commandType()
        # print(curCmdType)
        op = parser.opcode()
        arg1 = parser.arg1()
        arg2 = parser.arg2()
        # print('arg1: %s, arg2: %s' % (arg1, arg2))
        if curCmdType == VMCmdType.C_ARITHMETIC:
            coder.writeArithmetic(op)
        elif curCmdType == VMCmdType.C_PUSH or curCmdType == VMCmdType.C_POP:
            coder.writePushPop(op, arg1, arg2)
        # pdb.set_trace()

if __name__ == '__main__':
    start_t = time.time()
    main()
    end_t = time.time()
    elapse = int(round((end_t - start_t) * 1000))
    print('It takes %dms to translate.' % elapse)