#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from enum import Enum
from xml.sax.saxutils import escape
import argparse
import os.path as osp
import glob
import pdb
import os

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
    def __init__(self):
        self.keywords = ('class', 'constructor', 'function', 'method', 'field', 'static', 'var', 'int', 'char', 'boolean', 'void', 'true', 'false', 'null', 'this', 'let', 'do', 'if', 'else', 'while', 'return')
        self.symbols = "{}()[].,;+-*/&|<>=~"
        self.digits = '0123456789'
        self.token_type = None
        self.token_str = None
    
    def setFileName(self, input_file):
        self.lines = open(input_file, 'r').readlines()
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
        self.cur_fp = self.cur_fp + 1
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

        self.writeToken2XML()

    def tokenType(self):
        return self.token_type

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


if __name__ == '__main__':
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
        
