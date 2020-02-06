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
    def __init__(self):
        # fp is the file pointer which points to the last read pos
        self.fp = -1
        self.preFP = -1
        self.curCmd = None
        self.preCmd = None
        self.curCmdType = None
        self.op = None
        self.args = None
    
    def setFileName(self, src):
        self.src = src
        self.lines = open(src, 'r').readlines()
        self.lineCnt = len(self.lines)
        self.reset()

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
        if self.arg1() == 'static':
            self.args[1] = osp.splitext(osp.basename(self.src))[0] + '.' + self.args[1]
        return self.args[1]
    
    def opcode(self):
        return self.op

# Coder
class Coder(object):
    def __init__(self, tgt, no_comment):
        # super(Coder, self).__init__()
        self.tgt = tgt
        self.no_comment = no_comment
        self.srcBaseName = "BootStrap"
        self.curFuncName = ""
        self.curFuncRetId = 0
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
        if not self.no_comment:
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
                # true is -1, so true is < 0
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
        if not self.no_comment:
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
            # @tmp = R13
            self.asmSnippets.append('@R13')
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
            # @addr = @R14
            self.asmSnippets.append('@R14')
            self.asmSnippets.append('M=D')
            self.asmSnippets.append('@R13')
            self.asmSnippets.append('D=M')
            self.asmSnippets.append('@R14')
            self.asmSnippets.append('A=M')
            self.asmSnippets.append('M=D')
        self.write()
    
    def writeLabel(self, label):
        self.asmSnippets.clear()
        if not self.no_comment:
            self.asmSnippets.append('// label {}'.format(label))
        # sanctify label name to Xxx.foo$bar
        if self.curFuncName:
            # if not self.curFuncName.startswith(self.srcBaseName):
                # label = self.srcBaseName + '.' + self.curFuncName + '$' + label
            # else:
            label = self.curFuncName + '$' + label
        else:
            label = self.srcBaseName + '$' + label
        
        self.asmSnippets.append('({})'.format(label))
        self.write()

    def writeGoto(self, label):
        self.asmSnippets.clear()
        if not self.no_comment:
            self.asmSnippets.append('// goto {}'.format(label))
        if self.curFuncName:
            # if not self.curFuncName.startswith(self.srcBaseName):
                # label = self.srcBaseName + '.' + self.curFuncName + '$' + label
            # else:
            label = self.curFuncName + '$' + label
        else:
            label = self.srcBaseName + '$' + label
        self.asmSnippets.append('@{}'.format(label))
        self.asmSnippets.append('0;JMP')
        self.write()

    def writeIf(self, label):
        self.asmSnippets.clear()
        if not self.no_comment:
            self.asmSnippets.append('// if-goto {}'.format(label))
        if self.curFuncName:
            # if not self.curFuncName.startswith(self.srcBaseName):
                # label = self.srcBaseName + '.' + self.curFuncName + '$' + label
            # else:
            label = self.curFuncName + '$' + label
        else:
            label = self.srcBaseName + '$' + label
        # SP--
        self._changeSP(inc = False)
         # get *SP
        self.asmSnippets.append('@SP')
        self.asmSnippets.append('A=M')
        self.asmSnippets.append('D=M')
        self.asmSnippets.append('@{}'.format(label))
        # 0, !0(-1 for lt,eq,gt, >0 for BasicLoop.vm 'counter--; if-goto LOOP_START  // If counter > 0, goto LOOP_START')
        self.asmSnippets.append('D; JNE')
        self.write()

    def writeFunction(self, funcName, numVars):
        self.curFuncName = funcName
        self.curFuncRetId = 0
        self.asmSnippets.clear()
        if not self.no_comment:
            self.asmSnippets.append('// function {} {}'.format(funcName, numVars))

        # sanctify funcName to be Xxx.foo
        # if not funcName.startswith(self.srcBaseName):
        #     funcName = self.srcBaseName + '.' + funcName
        # function entry
        self.asmSnippets.append('({})'.format(funcName))
        # init local vars
        self.asmSnippets.append('@{}'.format(numVars))
        self.asmSnippets.append('D=A')

        self.asmSnippets.append('({}$$INIT_LCL_VARS)'.format(funcName))
        # if numVars == 0, goto over
        self.asmSnippets.append('@{}$$INIT_LCL_VARS_OVER'.format(funcName))
        self.asmSnippets.append('D;JEQ')

        self.asmSnippets.append('@SP')
        self.asmSnippets.append('A=M')
        self.asmSnippets.append('M=0')
        # sp++
        self._changeSP()
        self.asmSnippets.append('D=D-1')
        self.asmSnippets.append('@{}$$INIT_LCL_VARS'.format(funcName))
        self.asmSnippets.append('0;JMP')
        self.asmSnippets.append('({}$$INIT_LCL_VARS_OVER)'.format(funcName))
        self.write()

    def writeCall(self, funcName, numArgs):
        self.asmSnippets.clear()
        if not self.no_comment:
            self.asmSnippets.append('// call {} {}'.format(funcName, numArgs))
        # assume the funcName has prefix with className(fileName), delay to compiler implementation
        # if not funcName.startswith(self.srcBaseName):
        #     funcName = self.srcBaseName + '.' + funcName
        # Xxx.foo$ret.i
        if self.curFuncName:
            # if not self.curFuncName.startswith(self.srcBaseName):
            #     retAddrLabel = self.srcBaseName + '.' + self.curFuncName + '$ret.' + str(self.curFuncRetId)
            # else:
            retAddrLabel = self.curFuncName + '$ret.' + str(self.curFuncRetId)
        else:
            retAddrLabel = self.srcBaseName + '$ret.' + str(self.curFuncRetId)

        # push retAddrLabel
        self.asmSnippets.append('@{}'.format(retAddrLabel))
        self.asmSnippets.append('D=A')
        self.asmSnippets.append('@SP')
        self.asmSnippets.append('A=M')
        self.asmSnippets.append('M=D')
        self._changeSP()

        # push LCL(1), ARG(2), THIS(3), THAT(4) of the caller
        # bug here, can't pass NestedCall Case
        # '''
        pushCtxLabel = retAddrLabel.replace('$ret', '$saveCtx')
        pushCtxContLabel = retAddrLabel.replace('$ret', '$saveCtxCont')
        self.asmSnippets.append('@R15')
        self.asmSnippets.append('M=1')
        self.asmSnippets.append('({})'.format(pushCtxLabel))
        self.asmSnippets.append('@R15')
        self.asmSnippets.append('D=M')
        self.asmSnippets.append('@THAT')
        self.asmSnippets.append('D=D-A')
        self.asmSnippets.append('@{}'.format(pushCtxContLabel))
        self.asmSnippets.append('D;JGT')
        self.asmSnippets.append('@R15')
        self.asmSnippets.append('A=M')
        self.asmSnippets.append('D=M')
        self.asmSnippets.append('@SP')
        self.asmSnippets.append('A=M')
        self.asmSnippets.append('M=D')
        self._changeSP()
        self.asmSnippets.append('@R15')
        self.asmSnippets.append('M=M+1')
        self.asmSnippets.append('@{}'.format(pushCtxLabel))
        self.asmSnippets.append('0;JMP')
        self.asmSnippets.append('({})'.format(pushCtxContLabel))
        # '''

        # tosave = ['LCL', 'ARG', 'THIS', 'THAT']
        # for save in tosave:
        #     self.asmSnippets.append('@{}'.format(save))
        #     self.asmSnippets.append('D=M')
        #     self.asmSnippets.append('@SP')
        #     self.asmSnippets.append('A=M')
        #     self.asmSnippets.append('M=D')
        #     self._changeSP()
        

        # reposition ARG, ARG = SP - 5 - nArgs
        # offset
        self.asmSnippets.append('@{}'.format(5+int(numArgs)))
        self.asmSnippets.append('D=A')
        self.asmSnippets.append('@SP')
        self.asmSnippets.append('D=M-D')
        self.asmSnippets.append('@ARG')
        self.asmSnippets.append('M=D')

        # reposition LCL, LCL = SP
        self.asmSnippets.append('@SP')
        self.asmSnippets.append('D=M')
        self.asmSnippets.append('@LCL')
        self.asmSnippets.append('M=D')

        # goto functionName
        if not self.no_comment:
            self.asmSnippets.append('// goto {}'.format(funcName))
        self.asmSnippets.append('@{}'.format(funcName))
        self.asmSnippets.append('0;JMP')

        # add retAddr label
        self.asmSnippets.append('({})'.format(retAddrLabel))    
        self.curFuncRetId += 1
        self.write()

    def writeReturn(self):
        # save LCL to endFrame, endFrame = LCL
        self.asmSnippets.clear()
        if not self.no_comment:
            self.asmSnippets.append('// return')
        self.asmSnippets.append('@LCL')
        self.asmSnippets.append('D=M')
        self.asmSnippets.append('@endFrame')
        self.asmSnippets.append('M=D')

        # get retAddr, retAddr = *(endFrame - 5)
        self.asmSnippets.append('@5')
        self.asmSnippets.append('A=D-A')
        self.asmSnippets.append('D=M')
        self.asmSnippets.append('@retAddr')
        self.asmSnippets.append('M=D')

        # reposition return value, *ARG = pop()
        self._changeSP(inc = False)
        self.asmSnippets.append('@SP')
        self.asmSnippets.append('A=M')
        self.asmSnippets.append('D=M')
        self.asmSnippets.append('@ARG')
        self.asmSnippets.append('A=M')
        self.asmSnippets.append('M=D')

        # reposition SP of caller
        self.asmSnippets.append('@ARG')
        self.asmSnippets.append('D=M+1')
        self.asmSnippets.append('@SP')
        self.asmSnippets.append('M=D')

        # restore THAT, THIS, ARG, LCL of caller
            # THAT = *(endFrame – 1) 
            # THIS = *(endFrame – 2) 
            # ARG = *(endFrame – 3) 
            # LCL = *(endFrame – 4) 
        dests = ['THAT', 'THIS', 'ARG', 'LCL']
        for offset, dest in enumerate(dests, start = 1):
            self.asmSnippets.append('@endFrame')
            self.asmSnippets.append('D=M')
            self.asmSnippets.append('@{}'.format(offset))
            self.asmSnippets.append('A=D-A')
            self.asmSnippets.append('D=M')
            self.asmSnippets.append('@{}'.format(dest))
            self.asmSnippets.append('M=D')
        
        # goto retAddr
        self.asmSnippets.append('@retAddr')
        self.asmSnippets.append('A=M')
        self.asmSnippets.append('0;JMP')
        self.write()

    def writeInit(self):
        self.asmSnippets.clear()
        if not self.no_comment:
            self.asmSnippets.append('// bootstrap')
        # SP = 256
        self.asmSnippets.append('@256')
        self.asmSnippets.append('D=A')
        self.asmSnippets.append('@SP')
        self.asmSnippets.append('M=D')
        self.write()
        # call Sys.init
        self.writeCall('Sys.init', 0)

    
    def setFileName(self, fileName):
        self.srcBaseName = fileName

    def write(self):
        self.f.write('\n'.join(self.asmSnippets))
        self.f.write('\n')
        self.f.flush()
        # print('\n'.join(self.asmSnippets))
    
    def writeComment(self, comment):
        self.f.write('// {}\n'.format('*' * round(len(comment) * 1)))
        self.f.write('// {}\n'.format(comment))
        self.f.write('// {}\n'.format('*' * round(len(comment) * 1)))
        self.f.flush()
    
    def close(self):
        self.f.close()
    



def main():
    global srcName, tgtName, srcLine
    srcLine = 0
    parser = argparse.ArgumentParser()
    parser.add_argument('--src', type=str, default='MemoryAccess/BasicTest/BasicTest.vm', help='the vm file to translate')
    parser.add_argument('--no-init', action='store_true', help='whether to write init code')
    parser.add_argument('--no-comment', action='store_true', help='whether to write comment')


    args = parser.parse_args()
    # print(args)
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
    coder = Coder(tgtName, args.no_comment)

    print('Save to {}.'.format(tgtName))
    if not args.no_comment:
        coder.writeComment('**** Compile Time: {} ****'.format(time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())))
    if not args.no_init:
        coder.writeInit()
    for srcName in srcNames:
        print('Processing file {}...'.format(srcName))
        if not args.no_comment:
            coder.writeComment('**** File: {} ****'.format(srcName))
        baseName, suffix = osp.splitext(osp.basename(srcName))
        parser.setFileName(srcName)
        coder.setFileName(baseName)
        assert suffix.lower() == '.vm', '输入文件{}类型错误!'.format(srcName)
        
        while parser.hasMoreCommands():
            parser.advance()
            # print('>>>>>>>', parser.curCmd)
            srcLine += 1
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

def calcRatio():
    # srcLine = len(open(srcName).readlines())
    tgtLine = len(open(tgtName).readlines())
    # print(srcLine)
    # print(tgtLine)
    print('{} ==> {}'.format(srcLine, tgtLine))
    return tgtLine / float(srcLine)

if __name__ == '__main__':
    start_t = time.time()
    main()
    end_t = time.time()
    elapse = int(round((end_t - start_t) * 1000))
    print('It takes %dms to translate.' % elapse)
    print('Translate ratio is %.2f' % calcRatio())

