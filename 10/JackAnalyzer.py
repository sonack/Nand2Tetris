#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from enum import Enum
from xml.sax.saxutils import escape
import argparse
import os.path as osp
import glob
import pdb
import os
import sys

# token Type
tType = Enum('token Type', 
        (
            'KEYWORD',
            'SYMBOL',
            'IDENTIFIER',
            'INT_CONST',
            'STRING_CONST'
        ),
        start = 0
    )
tTypeStr = ['keyword', 'symbol', 'identifier', 'integerConstant', 'stringConstant']

class JackTokenizer(object):
    def __init__(self, writeToken = False):
        self.writeToken = writeToken
        self.keywords = ('class', 'constructor', 'function', 'method', 'field', 'static', 'var', 'int', 'char', 'boolean', 'void', 'true', 'false', 'null', 'this', 'let', 'do', 'if', 'else', 'while', 'return')
        self.symbols = "{}()[].,;+-*/&|<>=~"
        self.digits = '0123456789'
        self.token_type = None
        self.token_str = None
    
    def setFileName(self, input_file):
        self.lines = open(input_file, 'r').readlines()
        if self.writeToken:
            self.out_f = open(input_file.replace('.jack', 'TG.xml'), 'w')
            self.writeMsg2XML('<tokens>')
        self.lineCnt = len(self.lines)
        self.cur_fp = -1
        self.cur_line = None
        self.in_comment = False
        self.line_pos = 0
        self.line_len = 0

    def closeXML(self):
        self.out_f.close()
    
    def writeMsg2XML(self, msg):
        self.out_f.write(msg + '\n');
        self.out_f.flush()
    
    def writeToken2XML(self):
        token_type_str = tTypeStr[self.token_type.value]
        self.out_f.write('<{}> {} </{}>\n'.format(token_type_str, escape(self.token_str), token_type_str))
        self.out_f.flush()

    def hasMoreTokens(self):
        if self.line_pos < self.line_len:
            return True
        if self.cur_fp < self.lineCnt - 1:
            self.cur_fp = self.cur_fp + 1
        else:
            return False
        while self.cur_fp < self.lineCnt:
            self.cur_line = self.lines[self.cur_fp].strip()
            # check block comment
            if self.in_comment:
                # end block comment
                if '*/' in self.cur_line:
                    self.in_comment = False
                    self.cur_line = self.cur_line.split('*/')[1].strip()
                else:
                    self.cur_fp += 1
                    continue
            
            # start block comment
            if '/*' in self.cur_line:
                if '*/' not in self.cur_line:
                    self.in_comment = True
                # int i; /* */ int j; //
                beforePart = self.cur_line.split('/*')[0].rstrip()
                try:
                    afterPart = self.cur_line.split('*/')[1].lstrip()
                except IndexError:
                    afterPart = ""
                self.cur_line = beforePart + afterPart

            if '*/' in self.cur_line:
                self.in_comment = False
                self.cur_line = self.cur_line.split('*/')

            self.cur_line = self.cur_line.split('//')[0].rstrip()
            # fine a non-empty line
            if self.cur_line:
                self.line_pos = 0
                self.line_len = len(self.cur_line)
                return True
            else:
                self.cur_fp += 1

    def advance(self):
        if self.line_pos < self.line_len:
            while self.cur_line[self.line_pos].isspace():
                self.line_pos += 1
            valid_line = self.cur_line[self.line_pos:]
            first_char = valid_line[0]
            if first_char in self.symbols:
                self.token_str = self.cur_line[self.line_pos]
                self.token_type = tType.SYMBOL
                self.line_pos += 1
            elif first_char in self.digits:
                self.token_type = tType.INT_CONST
                end_pos = self.line_pos + 1
                while end_pos < self.line_len:
                    if not self.cur_line[end_pos] in self.digits:
                        break
                    end_pos += 1
                self.token_str = self.cur_line[self.line_pos : end_pos]
                self.line_pos = end_pos
            elif first_char == '"':
                self.token_type = tType.STRING_CONST
                end_pos = self.line_pos + 1
                while end_pos < self.line_len:
                    if self.cur_line[end_pos] == '"':
                        break
                    end_pos += 1
                if end_pos == self.line_len:
                    raise ValueError('String constant double quotes are not enclosed!')
                # remove ""
                self.token_str = self.cur_line[self.line_pos + 1 : end_pos]
                self.line_pos = end_pos + 1
            else:
                is_keyword = False
                for kw in self.keywords:
                    if valid_line.startswith(kw):
                        is_keyword = True
                        self.token_str = kw
                        self.token_type = tType.KEYWORD
                        self.line_pos += len(kw)
                        break
                if not is_keyword:
                    # identifier
                    self.token_type = tType.IDENTIFIER
                    end_pos = self.line_pos + 1
                    while end_pos < self.line_len:
                        c = self.cur_line[end_pos]
                        if not c.isalnum() and c != '_':
                            break
                        end_pos += 1
                    self.token_str = self.cur_line[self.line_pos : end_pos]
                    self.line_pos = end_pos
            if self.writeToken:
                self.writeToken2XML()

    def tokenType(self):
        return self.token_type
    
    def tokenStr(self):
        return self.token_str

    def keyWord(self):
        return self.token_str

    def symbol(self):
        return self.token_str

    def identifier(self):
        return self.token_str
    
    def intVal(self):
        return int(self.token_str)

    def stringVal(self):
        return self.token_str



class CompilationEngine():
    def __init__(self):
        self.tokenizer = JackTokenizer()
        self.indentCnt = 0
        
    def setFileName(self, input_file):
        self.indentCnt = 0
        self.srcName = input_file
        self.tgtName = input_file.replace('.jack', 'G.xml')
        self.out_f = open(self.tgtName, 'w')
        self.tokenizer.setFileName(self.srcName)
        self.token_exhausted = False
        if self.tokenizer.hasMoreTokens():
            self.tokenizer.advance()
            self.curType = self.tokenizer.tokenType()
            self.curToken = self.tokenizer.tokenStr()
 
    def eat(self, expected):
        # nothing to eat left
        if self.token_exhausted:
            err_info = 'Expected '
            for idx, t, v in enumerate(expected.items()):
                err_info += '{} of type {} {}'.format(' , '.join(v), tTypeStr[t.value], ', or ' if idx < len(expected) - 1 else ', but got nothing.')
            raise ValueError(err_info)
            sys.exit(-1)
        
        curType = self.tokenizer.tokenType()
        curToken = self.tokenizer.tokenStr()
        # self.curType = curType
        # self.curToken = curToken

        # deal with singular element list 
        expected = { k: (v if isinstance(v, (list, tuple)) or (isinstance(v, str) and len(v) > 1) else (v,) if v else curToken)  for k, v in expected.items() }


        if curType not in expected or (curToken not in expected[curType]):
            err_info = 'Expected '
            for idx, (t, v) in enumerate(expected.items()):
                err_info += '{} of type {} {}'.format(' , '.join(v), tTypeStr[t.value], ', or ' if idx < len(expected) - 1 else ', but got {} of type {}.'.format(curToken, tTypeStr[curType.value]))
            raise ValueError(err_info)
        else:
            self.out_f.write('{indentspace}<{type}> {token} </{type}>\n'.format(type = tTypeStr[self.curType.value], token = escape(self.curToken), indentspace = '  ' * self.indentCnt))
            # prepare next eat food
            if self.tokenizer.hasMoreTokens():
                self.tokenizer.advance()
                self.curType = self.tokenizer.tokenType()
                self.curToken = self.tokenizer.tokenStr()
                # print('curToken is', self.curToken)
                # pdb.set_trace()
            else:
                self.token_exhausted = True
                
    
    def _isClassVarDec(self):
        return self.curType == tType.KEYWORD and self.curToken in ['field', 'static']

    def _isSubroutineDec(self):
        return self.curType == tType.KEYWORD and self.curToken in ['constructor', 'function', 'method']
    
    def _isClass(self):
        return self.curType == tType.KEYWORD and self.curToken == 'class'

    def _isSymbolX(self, sym):
        return self.curType == tType.SYMBOL and self.curToken in sym

    def _isVarDec(self):
        return self.curType == tType.KEYWORD and self.curToken == 'var'
    
    def _isStatement(self):
        return self.curType == tType.KEYWORD and self.curToken in ['let', 'if', 'while', 'do', 'return']
    
    def _isElse(self):
        return self.curType == tType.KEYWORD and self.curToken == 'else'

    def compileClassVarDec(self):
        self.out_f.write('{}<classVarDec>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.eat({tType.KEYWORD: ('static', 'field')})
        # type
        self.eat({
            tType.KEYWORD: ('int', 'char', 'boolean'),
            tType.IDENTIFIER: None
        })
        # varName
        self.eat({tType.IDENTIFIER: None})
        # (, varName)
        while self._isSymbolX(','):
            self.eat({tType.SYMBOL: ','})
            self.eat({tType.IDENTIFIER: None})        
        # ;
        self.eat({tType.SYMBOL: ';'})
        self.indentCnt -= 1
        self.out_f.write('{}</classVarDec>\n'.format('  ' * self.indentCnt))

    def compileParameterList(self):
        self.out_f.write('{}<parameterList>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        # ((type varName) (',' type varName)*)?
        if self.curToken != ')':
            # type
            self.eat({
                tType.KEYWORD: ('int', 'char', 'boolean'),
                tType.IDENTIFIER: None
            })
            # varName
            self.eat({tType.IDENTIFIER: None})
            # (',' type varName)*
            while self._isSymbolX(','):
                self.eat({tType.SYMBOL: ','})
                self.eat({
                    tType.KEYWORD: ('int', 'char', 'boolean'),
                    tType.IDENTIFIER: None
                })
                self.eat({tType.IDENTIFIER: None})
        self.indentCnt -= 1
        self.out_f.write('{}</parameterList>\n'.format('  ' * self.indentCnt))

    def compileVarDec(self):
        self.out_f.write('{}<varDec>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        # 'var' type varName (',' varName)* ';'
        self.eat({tType.KEYWORD: 'var'})
        # type
        self.eat({
            tType.KEYWORD: ('int', 'char', 'boolean'),
            tType.IDENTIFIER: None
        })
        # varName
        self.eat({tType.IDENTIFIER: None})
        # (',' varName)*
        while self._isSymbolX(','):
            self.eat({tType.SYMBOL: ','})
            self.eat({tType.IDENTIFIER: None})
        # ;
        self.eat({tType.SYMBOL: ';'})
        self.indentCnt -= 1
        self.out_f.write('{}</varDec>\n'.format('  ' * self.indentCnt))

    def compileLet(self):
        # 'let' varName ('[' expression ']')? '=' expression ';'
        self.out_f.write('{}<letStatement>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.eat({tType.KEYWORD: 'let'})
        self.eat({tType.IDENTIFIER: None})
        # '[' expression ']'
        if self._isSymbolX('['):
            self.eat({tType.SYMBOL: '['})
            self.compileExpression()
            self.eat({tType.SYMBOL: ']'})
        self.eat({tType.SYMBOL: '='})
        self.compileExpression()
        self.eat({tType.SYMBOL: ';'})
        self.indentCnt -= 1
        self.out_f.write('{}</letStatement>\n'.format('  ' * self.indentCnt))

    def compileIf(self):
        # 'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}')?
        self.out_f.write('{}<ifStatement>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.eat({tType.KEYWORD: 'if'})
        self.eat({tType.SYMBOL: '('})
        self.compileExpression()
        self.eat({tType.SYMBOL: ')'})
        self.eat({tType.SYMBOL: '{'})
        self.compileStatements()
        self.eat({tType.SYMBOL: '}'})
        if self._isElse():
            self.eat({tType.KEYWORD: 'else'})
            self.eat({tType.SYMBOL: '{'})
            self.compileStatements()
            self.eat({tType.SYMBOL: '}'})
        self.indentCnt -= 1
        self.out_f.write('{}</ifStatement>\n'.format('  ' * self.indentCnt))

    def compileWhile(self):
        # 'while' '(' expression ')' '{' statements '}'
        self.out_f.write('{}<whileStatement>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.eat({tType.KEYWORD: 'while'})
        self.eat({tType.SYMBOL: '('})
        self.compileExpression()
        self.eat({tType.SYMBOL: ')'})
        self.eat({tType.SYMBOL: '{'})
        self.compileStatements()
        self.eat({tType.SYMBOL: '}'})
        self.indentCnt -= 1
        self.out_f.write('{}</whileStatement>\n'.format('  ' * self.indentCnt))
    
    def compileDo(self):
        # 'do' subroutineCall ';'
        self.out_f.write('{}<doStatement>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.eat({tType.KEYWORD: 'do'})
        # subroutineCall
        # subroutineName '(' expressionList ')' | (className | varName) '.' subroutineName '(' expressionList ')'
        self.eat({tType.IDENTIFIER: None})
        if self._isSymbolX('.'):
            # (className|varName).subroutineName
            self.eat({tType.SYMBOL: '.'})
            self.eat({tType.IDENTIFIER: None})

        self.eat({tType.SYMBOL: '('})
        self.compileExpressionList()
        self.eat({tType.SYMBOL: ')'})

        self.eat({tType.SYMBOL: ';'})
        self.indentCnt -= 1
        self.out_f.write('{}</doStatement>\n'.format('  ' * self.indentCnt))

    def compileReturn(self):
        # 'return' expression? ';'
        self.out_f.write('{}<returnStatement>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.eat({tType.KEYWORD: 'return'})
        if not self._isSymbolX(';'):
            self.compileExpression()
        self.eat({tType.SYMBOL: ';'})
        self.indentCnt -= 1
        self.out_f.write('{}</returnStatement>\n'.format('  ' * self.indentCnt))

    def compileExpression(self):
        # term (op term)*
        self.out_f.write('{}<expression>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.compileTerm()
        # op
        while self._isSymbolX('+-*/&|<>='):
            self.eat({tType.SYMBOL: '+-*/&|<>='})
            self.compileTerm()
        self.indentCnt -= 1
        self.out_f.write('{}</expression>\n'.format('  ' * self.indentCnt))

    def compileExpressionList(self):
        # (expression (',' expression)*)?
        self.out_f.write('{}<expressionList>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        # expressionList always followed by ')'
        if not self._isSymbolX(')'):
            self.compileExpression()
        while self._isSymbolX(','):
            self.eat({tType.SYMBOL: ','})
            self.compileExpression()
        self.indentCnt -= 1
        self.out_f.write('{}</expressionList>\n'.format('  ' * self.indentCnt))

    def compileTerm(self):
        self.out_f.write('{}<term>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        if self._isSymbolX(('-~')): # unaryOp term
            self.eat({tType.SYMBOL: '-~'})
            self.compileTerm()
        elif self._isSymbolX('('):  # '(' expression ')'
            self.eat({tType.SYMBOL: '('})
            self.compileExpression()
            self.eat({tType.SYMBOL: ')'})
        else:
            self.eat({
                tType.INT_CONST: None,
                tType.STRING_CONST: None,
                tType.KEYWORD: ['true', 'false', 'null', 'this'],
                tType.IDENTIFIER: None, # varName, varName[], varName() varName.foo()
            })
        if self._isSymbolX('['):    # varName[]
            self.eat({tType.SYMBOL: '['})
            self.compileExpression()
            self.eat({tType.SYMBOL: ']'})
        elif self._isSymbolX(('.(')):  # subroutineCall
            if self._isSymbolX('.'):
                # (className|varName).subroutineName
                self.eat({tType.SYMBOL: '.'})
                self.eat({tType.IDENTIFIER: None})
            self.eat({tType.SYMBOL: '('})
            self.compileExpressionList()
            self.eat({tType.SYMBOL: ')'})
        else: # varName
            pass
        self.indentCnt -= 1
        self.out_f.write('{}</term>\n'.format('  ' * self.indentCnt))

    def compileStatement(self):
        if self.curToken == 'let':
            self.compileLet()
        elif self.curToken == 'if':
            self.compileIf()
        elif self.curToken == 'while':
            self.compileWhile()
        elif self.curToken == 'do':
            self.compileDo()
        elif self.curToken == 'return':
            self.compileReturn()

    def compileStatements(self):
        self.out_f.write('{}<statements>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        # statement*
        while self._isStatement():
            self.compileStatement()
        self.indentCnt -= 1
        self.out_f.write('{}</statements>\n'.format('  ' * self.indentCnt))

    def compileSubroutineBody(self):
        self.out_f.write('{}<subroutineBody>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.eat({tType.SYMBOL: '{'})
        # varDec*
        while self._isVarDec():
            self.compileVarDec()
        # statements
        self.compileStatements()
        self.eat({tType.SYMBOL: '}'})
        self.indentCnt -= 1
        self.out_f.write('{}</subroutineBody>\n'.format('  ' * self.indentCnt))

    def compileSubroutineDec(self):
        self.out_f.write('{}<subroutineDec>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        # method type
        self.eat({tType.KEYWORD: ('constructor', 'function', 'method')})
        # return type
        self.eat({
            tType.KEYWORD: ('int', 'char', 'boolean', 'void'),
            tType.IDENTIFIER: None
        })
        # subroutineName
        self.eat({tType.IDENTIFIER: None})
        # (
        self.eat({tType.SYMBOL: '('})
        # parameterList
        self.compileParameterList()
        self.eat({tType.SYMBOL: ')'})
        # subroutineBody
        self.compileSubroutineBody()
        self.indentCnt -= 1
        self.out_f.write('{}</subroutineDec>\n'.format('  ' * self.indentCnt))

    def compileClass(self):
        self.out_f.write('{}<class>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.eat({tType.KEYWORD: 'class'})
        # className --> identifier
        self.eat({tType.IDENTIFIER: None})
        self.eat({tType.SYMBOL: '{'})
        # deal with classVarDec*
        while self._isClassVarDec():
            self.compileClassVarDec()
        
        # deal with subroutineDec*
        while self._isSubroutineDec():
            self.compileSubroutineDec()

        self.eat({tType.SYMBOL: '}'})
        self.indentCnt -= 1
        self.out_f.write('{}</class>\n'.format('  ' * self.indentCnt))
    
    def parse(self):
        if self._isClass():
            self.compileClass()
        self.out_f.close()



def JackTokenizerMain():
    parser = argparse.ArgumentParser()
    parser.add_argument('--src', type=str, default='ArrayTest/Main.jack', help='the jack file to tokenize')
    args = parser.parse_args()

    srcName = args.src
    if not osp.exists(srcName):
        print('{} does not exist!'.format(srcName))
        sys.exit(-1)

    if osp.isdir(srcName):
        srcNames = glob.glob(osp.join(srcName, '*.jack'))
    else:
        srcNames = [srcName]
    
    tokenizer = JackTokenizer()
    
    for srcName in srcNames:
        print('Tokenizing file {}...'.format(srcName))
        tokenizer.setFileName(srcName)
        idx = 0
        while tokenizer.hasMoreTokens():
            idx += 1
            tokenizer.advance()
            token_type = tokenizer.tokenType()
            if token_type == tType.KEYWORD:
                token = tokenizer.keyWord()
            elif token_type == tType.SYMBOL:
                token = tokenizer.symbol()
            elif token_type == tType.IDENTIFIER:
                token = tokenizer.identifier()
            elif token_type == tType.INT_CONST:
                token = str(tokenizer.intVal())
            elif token_type == tType.STRING_CONST:
                token = tokenizer.stringVal()
            # print("{}: {}, {}".format(idx, tTypeStr[token_type.value], token))
        else:
            tokenizer.writeMsg2XML('</tokens>')
            tokenizer.closeXML()
        tgtName = srcName.replace('.jack', 'TG.xml')
        cmpName = srcName.replace('.jack', 'T.xml')
        print('Save tokenized file to {}.'.format(tgtName))
        print('Comparing {} to {} ... '.format(tgtName, cmpName))
        os.system('TextComparer.sh {} {}'.format(tgtName, cmpName))

def Main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--src', type=str, default='ArrayTest/Main.jack', help='the jack file to tokenize')
    args = parser.parse_args()

    srcName = args.src
    if not osp.exists(srcName):
        print('{} does not exist!'.format(srcName))
        sys.exit(-1)

    if osp.isdir(srcName):
        srcNames = glob.glob(osp.join(srcName, '*.jack'))
    else:
        srcNames = [srcName]

    cEngine = CompilationEngine()
    
    for srcName in srcNames:
        print('Parsing file {}...'.format(srcName))
        cEngine.setFileName(srcName)
        cEngine.parse()

        tgtName = srcName.replace('.jack', 'G.xml')
        cmpName = srcName.replace('.jack', '.xml')
        print('Save parsed file to {}.'.format(tgtName))
        print('Comparing {} to {} ... '.format(tgtName, cmpName))
        os.system('TextComparer.sh {} {}'.format(tgtName, cmpName))
        diffRet = os.system('diff --strip-trailing-cr {} {}'.format(tgtName, cmpName))
        print('"diff {} {}" result is {}'.format(tgtName, cmpName, diffRet))

if __name__ == '__main__':
    # JackTokenizerMain()
    Main()