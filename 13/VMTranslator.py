#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
import os.path as osp
from enum import Enum
import argparse
import time
import pdb
import glob

VMCmdType = Enum(
    'VMCmdType',
    (
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
    def __init__(self):
        self.fp = -1
        self.cmd = None
        self.cmdType = None
        self.op = None
        self.args = None
    
    def setFileName(self, src):
        self.src = src
        self.basename = osp.splitext(osp.basename(self.src))[0]
        self.lines = open(src, 'r').readlines()
        self.lineCnt = len(self.lines)
        self.reset()

    def reset(self):
        self.fp = -1
    
    def hasMoreCommands(self):
        self.fp = self.fp + 1
        while self.fp < self.lineCnt:
            self.cmd = self.lines[self.fp].split('//')[0].strip()
            if self.cmd:
                break
            self.fp += 1
        return self.fp < self.lineCnt
    
    # must called if hasMoreCommands() returns True
    def advance(self):
        decomp = self.cmd.split()
        self.op = decomp[0]
        if len(decomp) > 1:
            self.args = decomp[1:]
        else:
            self.args = [self.op]
        self.args = self.args + [None] * (2 - len(self.args))

    def commandType(self):
        mapping = dict({
            # PushPop
            ('push', VMCmdType.C_PUSH),
            ('pop', VMCmdType.C_POP),
            # branching
            ('label', VMCmdType.C_LABEL),
            ('goto', VMCmdType.C_GOTO),
            ('if-goto', VMCmdType.C_IF),
            # function
            ('function', VMCmdType.C_FUNCTION),
            ('return', VMCmdType.C_RETURN),
            ('call', VMCmdType.C_CALL)
        })
        return mapping.get(self.op, VMCmdType.C_ARITHMETIC)

    def arg1(self):
        return self.args[0]

    def arg2(self):
        seg = self.args[0]
        idx = self.args[1]
        if not idx:
            return None
        if seg == 'static':
            idx = "{}.{}".format(self.basename, idx)
        else:
            idx = int(idx)
        if seg == 'pointer':
            idx = 'THIS' if idx == 0 else 'THAT'
        elif seg == 'temp':
            idx = "R{}".format(idx + 5)
        return idx
    
    def opcode(self):
        return self.op


class Coder(object):
    def __init__(self, tgt, no_init = False, no_comment = False):
        super(Coder, self).__init__()
        self.tgt = tgt
        self.f = open(tgt, 'w')
        self.pc = 0
        self.no_init = no_init
        self.no_comment = no_comment
        self.seg2sym = dict({
            ('local', 'LCL'),
            ('argument', 'ARG'),
            ('this', 'THIS'),
            ('that', 'THAT'),
        })

        self.unaryOp2Sym = {
            'neg': '-',
            'not': '!'
        }

        self.binaryOp2Sym = {
            'add': '+',
            'sub': '-',
            'and': '&',
            'or': '|'
        }

        self.cmpOpCnt = {
            'eq': 0,
            'gt': 0,
            'lt': 0
        }

        self.retAddrCnt = 0
        self.curFuncName = "BAREBONE"


    def writeComment(self, comment):
        if not self.no_comment:
            self.f.write('// [{}]\n'.format(self.pc))
            self.f.write(comment + '\n')
            self.f.flush()

    def write(self, asm):
        asm = '\n'.join(asm) + '\n'
        for cmd in asm.split('\n'):
            if (not cmd) or (cmd[0] == '('):
                continue
            self.pc+=1
        self.f.write(asm)
        self.f.flush()
    
    # mem[sp] = rhs
    def push(self, seg, idx):
        self.writeComment('// push {} {}'.format(seg, idx))
        asm = []
        rhs = 'D'
        if seg == 'constant':
            if idx > 1:
                asm.append('@{}\nD=A'.format(idx))
            else:
                rhs = idx
        else:
            if seg in self.seg2sym:
                asm.append('@{}'.format(self.seg2sym[seg]))
                if idx == 0:
                    asm.append('A=M')
                elif idx == 1:
                    asm.append('A=M+1')
                elif idx == 2:
                    asm.append('A=M+1\nA=A+1')
                else:
                    asm.append('D=M\n@{}\nA=D+A'.format(idx))
            else:
                # static, temp, pointer
                asm.append('@{}'.format(idx))
            
            asm.append('D=M')
    
        asm.append('@SP\nAM=M+1\nA=A-1\nM={}'.format(rhs))
        self.write(asm)

    # lhs = mem[sp]
    def pop(self, seg, idx):
        self.writeComment('// pop {} {}'.format(seg, idx))
        asm = []
        asm.append('@SP\nAM=M-1\nD=M')
        if seg in self.seg2sym:
            # if idx < 12:
            if idx < 7:
                asm.append('@{}'.format(self.seg2sym[seg]))
                if idx == 0:
                    asm.append('A=M')
                else:
                    asm.append('A=M+1')
                    for i in range(idx - 1):
                        asm.append('A=A+1')
            else:
                # bug: R14, M=A 
                # asm.append('@R13\nM=D\n@{}\nD=A\n@{}\nD=M+D\n@R14\nM=D\n@R13\nD=M\n@R14\nA=M'.format(idx, self.seg2sym[seg]))
                asm = ['@{}\nD=M\n@{}\nD=D+A\n@R13\nM=D\n@SP\nAM=M-1\nD=M\n@R13\nA=M'.format(self.seg2sym[seg], idx)]

        else:
            # static, temp, pointer
            asm.append('@{}'.format(idx))
        asm.append('M=D')
        self.write(asm)
    
    def writeArithmetic(self, op):
        self.writeComment('// {}'.format(op))
        asm = []
        if op in self.unaryOp2Sym:
            # if op == 'not':
            asm.append('@SP\nA=M-1\nM={}M'.format(self.unaryOp2Sym[op]))
            # elif op == 'neg':
            #     asm.append('@SP\nA=M-1\nD=!M\nM=D+1')
        elif op in self.binaryOp2Sym:
            asm.append('@SP\nAM=M-1\nD=M\nA=A-1\nM=M{}D'.format(self.binaryOp2Sym[op]))
        elif op in self.cmpOpCnt:
            ret_label = 'RET_ADDRESS_{}{}'.format(op.upper(), self.cmpOpCnt[op])
            func_label = 'VM_SUBROUTINE_{}'.format(op.upper())
            asm.append('@{label}\nD=A\n@{func}\n0;JMP\n({label})'.format(label = ret_label, func = func_label))
            self.cmpOpCnt[op] += 1
        self.write(asm)

    def writeVMSubroutinesCmps(self):
        asm = []
        ops = ['EQ', 'GT', 'LT']
        jmps = ['JNE', 'JLE', 'JGE']
        for op, jmp in zip(ops, jmps):
            entry_label = 'VM_SUBROUTINE_{}'.format(op)
            false_label = 'END_{}'.format(op)
            asm.append('({entry_label})\n@R15\nM=D\n@SP\nAM=M-1\nD=M\nA=A-1\nD=M-D\nM=0\n@{false_label}\nD;{false_jmp}\n@SP\nA=M-1\nM=-1\n({false_label})\n@R15\nA=M\n0;JMP'.format(entry_label = entry_label, false_label = false_label, false_jmp = jmp))
        self.write(asm)

    # D = return addr
    # R13 = nArgs
    # R14 = called funcName entry addr
    def writeVMSubroutinesCall(self):
        asm = ['(VM_SUBROUTINE_CALL)']
        # push return addr (D)
        # note sp has not ++
        asm.append('@SP\nA=M\nM=D')
        for seg in ['LCL', 'ARG', 'THIS', 'THAT']:
            asm.append('@{}\nD=M\n@SP\nAM=M+1\nM=D'.format(seg))
        # ARG = sp - 5 - nArgs = (sp - 1) - 4 - nArgs
        asm.append('@4\nD=A\n@R13\nD=D+M\n@SP\nD=M-D\n@ARG\nM=D')
        # sp++, LCL = sp
        asm.append('@SP\nMD=M+1\n@LCL\nM=D')
        # goto funcName
        asm.append('@R14\nA=M\n0;JMP')
        self.write(asm)

    def writeVMSubroutinesReturn(self):
        asm = ['(VM_SUBROUTINE_RETURN)']
        # R13 = return addr = *(LCL - 5)
        asm.append('@5\nD=A\n@LCL\nA=M-D\nD=M\n@R13\nM=D')
        # arg = pop() = return value
        asm.append('@SP\nAM=M-1\nD=M\n@ARG\nA=M\nM=D')
        # sp = arg + 1
        asm.append('D=A\n@SP\nM=D+1')
        # THAT
        asm.append('@LCL\nD=M\n@R14\nAM=D-1\nD=M\n@THAT\nM=D')
        for seg in ['THIS', 'ARG', 'LCL']:
            asm.append('@R14\nAM=M-1\nD=M\n@{}\nM=D'.format(seg))
        # return
        asm.append('@R13\nA=M\n0;JMP')
        self.write(asm)

    def writeCall(self, funcName, nArgs):
        self.writeComment('// call {} {}'.format(funcName, nArgs))
        asm = []
        # R13 = nArgs
        asm.append('@{}\nD=A\n@R13\nM=D'.format(nArgs))
        # R14 = invoked func entry
        asm.append('@{}\nD=A\n@R14\nM=D'.format(funcName))
        # D = return addr
        ret_label = 'RET_ADDRESS_CALL{}'.format(self.retAddrCnt)
        asm.append('@{label}\nD=A\n@VM_SUBROUTINE_CALL\n0;JMP\n({label})'.format(label = ret_label))
        self.retAddrCnt += 1
        self.write(asm)

    def writeReturn(self):
        self.writeComment('// return')
        asm = []
        asm.append('@VM_SUBROUTINE_RETURN\n0;JMP')
        self.write(asm)
    
    # repeat nLocals times push 0
    def writeFunction(self, funcName, nLocals):
        self.writeComment('// function {} {}'.format(funcName, nLocals))
        asm = []
        asm.append('({})'.format(funcName))
        # nLocals == 0, do nothing
        if nLocals == 1:
            asm.append('@SP\nAM=M+1\nA=A-1\nM=0')
        elif nLocals == 2:
            asm.append('@SP\nA=M\nM=0\nAD=A+1\nM=0\n@SP\nM=D+1')
        elif nLocals > 2:
            loop_label = "LOOP_{}".format(funcName)
            asm.append('@{nLocals}\nD=A\n({loop_label})\nD=D-1\n@SP\nAM=M+1\nA=A-1\nM=0\n@{loop_label}\nD;JGT\n'.format(nLocals = nLocals, loop_label = loop_label))
        self.write(asm)
        self.curFuncName = funcName
    
    def writeGoto(self, label):
        self.writeComment('// goto {}'.format(label))
        asm = []
        label = "{}${}".format(self.curFuncName, label)
        asm.append('@{}\n0;JMP'.format(label))
        self.write(asm)

    def writeLabel(self, label):
        self.writeComment('// label {}'.format(label))
        asm = []
        label = "{}${}".format(self.curFuncName, label)
        asm.append('({})'.format(label))
        self.write(asm)

    def writeIf(self, label):
        self.writeComment('// if-goto {}'.format(label))
        asm = []
        label = "{}${}".format(self.curFuncName, label)
        # pop cond result
        asm.append('@SP\nAM=M-1\nD=M\n@{}\nD;JNE'.format(label))
        self.write(asm)

    def writeBootstrap(self):
        self.writeComment('// bootstrap\n// sp = 256')
        asm = []
        # sp = 256
        asm.append('@256\nD=A\n@SP\nM=D')
        self.write(asm)
        self.writeCall('Sys.init', 0)

    def writeVMSubroutines(self):
        if self.no_init:
            self.writeGoto('START')
        else:
            self.writeBootstrap()

        self.writeVMSubroutinesCmps()
        self.writeVMSubroutinesReturn()
        self.writeVMSubroutinesCall()

        if self.no_init:
            self.writeLabel('START')

    def writePushPop(self, op, seg, idx):
        if op == 'push':
            self.push(seg, idx)
        elif op == 'pop':
            self.pop(seg, idx)
        else:
            raise ValueError("writePushPop only receive cmd whose type is push or pop, but got {}.".format(cmd))
    
    def close(self):
        self.f.close()

def main():
    global srcName, tgtName
    parser = argparse.ArgumentParser()
    parser.add_argument('--src', type=str, default='MemoryAccess/BasicTest/BasicTest.vm', help='the vm file to translate')
    parser.add_argument('--no-init', action='store_true', help='whether to write init code')
    parser.add_argument('--no-comment', action='store_true', help='whether to write comment')


    args = parser.parse_args()
    srcName = args.src
    if not osp.exists(srcName):
        print('{} does not exist!'.format(srcName))
        sys.exit(-1)

    if osp.isdir(srcName):
        srcNames = glob.glob(osp.join(srcName, '*.vm'))
        baseFile = osp.basename(srcName.rstrip("/"))
        tgtName = osp.join(srcName, baseFile + '.asm')
    else:
        srcNames = [srcName]
        tgtName = srcName.replace('.vm', '.asm')

    parser = Parser()
    coder = Coder(tgtName, args.no_init, args.no_comment)
    coder.writeVMSubroutines()

    print('Save to {}.'.format(tgtName))
    for srcName in srcNames:
        print('Processing file {}...'.format(srcName))
        parser.setFileName(srcName)
        baseName, suffix = osp.splitext(osp.basename(srcName))
        assert suffix.lower() == '.vm', '输入文件{}类型错误!'.format(srcName)
        
        while parser.hasMoreCommands():
            parser.advance()
            curCmdType = parser.commandType()
            # print(parser.cmd)
            op = parser.opcode()
            arg1 = parser.arg1()
            arg2 = parser.arg2()
            # print('arg1: %s, arg2: %s' % (arg1, arg2))
            if curCmdType == VMCmdType.C_ARITHMETIC:
                coder.writeArithmetic(op)
            elif curCmdType == VMCmdType.C_PUSH or curCmdType == VMCmdType.C_POP:
                coder.writePushPop(op, arg1, arg2)
            elif curCmdType == VMCmdType.C_LABEL:
                coder.writeLabel(arg1)
            elif curCmdType == VMCmdType.C_GOTO:
                coder.writeGoto(arg1)
            elif curCmdType == VMCmdType.C_IF:
                coder.writeIf(arg1)
            elif curCmdType == VMCmdType.C_FUNCTION:
                coder.writeFunction(arg1, arg2)
            elif curCmdType == VMCmdType.C_RETURN:
                coder.writeReturn()
            elif curCmdType == VMCmdType.C_CALL:
                coder.writeCall(arg1, arg2)
            # pdb.set_trace()        
    coder.close()

if __name__ == '__main__':
    main()
