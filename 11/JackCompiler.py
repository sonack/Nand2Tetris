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

def raise_error(errmsg, lineNum):
    print('Error in Line {}: {}'.format(lineNum + 1, errmsg))
    sys.exit(-1)

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

    def getLineNumber(self):
        return self.cur_fp
    
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
                    bad_str = valid_line[1:]
                    raise_error('String constant "{}" double quotes are not enclosed!'.format(bad_str), self.getLineNumber())
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
                    if not (first_char.isalpha() or first_char == '_'):
                        raise_error('Unexpected identifier starts with "{}".'.format(first_char), self.getLineNumber())
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
        self.vmwriter = VMWriter()
        self.symTable = SymbolTable()
        self.id_kinds_str = ['static', 'field', 'argument', 'var', 'class', 'subroutine']
        self.indentCnt = 0
        self.curFuncName = None
        self.if_id = -1
        self.while_id = -1
        self.op2cmd = {
            '+': 'add',
            '-': 'sub',

            '<': 'lt',
            '>': 'gt',
            '=': 'eq',

            '&': 'and',
            '|': 'or',
            # function implemented operator
            '*': 'Math.multiply',
            '/': 'Math.divide'
        }
        self.unaryOp2cmd = {
            '-': 'neg',
            '~': 'not'
        }

        # self.kwconst2val = {
        #     # 'true': -1,
        #     'false': 0,
        #     'null': 0
        # }

        self.kind2seg = ['static', 'this', 'argument', 'local']

    def setFileName(self, input_file):
        self.indentCnt = 0
        self.srcName = input_file
        self.baseName = osp.splitext(osp.basename(input_file))[0]
        self.tgtName = input_file.replace('.jack', 'G+.xml')
        
        self.out_f = open(self.tgtName, 'w')
        self.tokenizer.setFileName(self.srcName)
        self.vmwriter.setFileName(self.srcName)
        self.token_exhausted = False
        if self.tokenizer.hasMoreTokens():
            self.tokenizer.advance()
            self.curType = self.tokenizer.tokenType()
            self.curToken = self.tokenizer.tokenStr()
 
    def eat(self, expected):
        # nothing to eat left
        if self.token_exhausted:
            err_info = 'Expected '
            for idx, (t, v) in enumerate(expected.items()):
                if v[0] != 'any':
                    v = ('"' + ve + '"' for ve in v)
                err_info += '{} of type {} {}'.format('、'.join(v), tTypeStr[t.value], ',or ' if idx < len(expected) - 1 else ', but got nothing.')
            # raise ValueError(err_info)
            # sys.exit(-1)
            raise_error(err_info, self.tokenizer.getLineNumber())
        
        curType = self.tokenizer.tokenType()
        curToken = self.tokenizer.tokenStr()
        # self.curType = curType
        # self.curToken = curToken

        # deal with singular element list 
        expected = { k: (v if isinstance(v, (list, tuple)) or (isinstance(v, str) and len(v) > 1) else (v,) if v else ('any',))  for k, v in expected.items() }
        if (curType not in expected) or ((expected[curType][0] != 'any') and (curToken not in expected[curType])):
            err_info = 'Expected '
            for idx, (t, v) in enumerate(expected.items()):
                if v[0] != 'any':
                    v = ('"' + ve + '"' for ve in v)
                err_info += '{} of type {}{}'.format('、'.join(v), tTypeStr[t.value], ', or ' if idx < len(expected) - 1 else ', but got "{}" of type {}.'.format(curToken, tTypeStr[curType.value]))
            # raise ValueError(err_info)
            raise_error(err_info, self.tokenizer.getLineNumber())
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

    def _isExpression(self):
        if self.curType in [tType.INT_CONST, tType.STRING_CONST, tType.IDENTIFIER] or (self.curType == tType.KEYWORD and self.curToken in ['true', 'false', 'null', 'this']) or (self.curType == tType.SYMBOL and self.curToken in '-~('):
            return True
        return False

    def _isIdentifier(self):
        return self.curType == tType.IDENTIFIER
    
    # For class, subroutine, category = 'class' | 'subroutine', defined = True/False
    # For variables, when defined = False, then we need to look up symbol table to get its category and type, so var category and type are None
    # when defined = True, then catogory and type are passed from outside
    def compileIdentifierDetails(self, category = None, type = None, defined = False):
        self.out_f.write('{}<identifierDetails>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        # <identifier> tag
        name = self.curToken
        self.eat({tType.IDENTIFIER: None})
        
        if not defined and not category:
            category = self.symTable.KindOf(name)
            type = self.symTable.TypeOf(name)
            if not category:
                # kind enum type
                # do statement
                # className. or subroutineName(
                # pdb.set_trace()
                if self._isSymbolX('.'):
                    category = 'class'
                else:
                    category = 'subroutine'
            else:
                category = self.id_kinds_str[category.value]

        
        self.out_f.write('{indentspace}<{tag}> {detail} </{tag}>\n'.format(tag = 'category', detail = category, indentspace = '  ' * self.indentCnt))

        # variable kinds
        if category in self.id_kinds_str[:4]:
            if defined:
                self.symTable.define(name, type, SymKind(self.id_kinds_str.index(category)))
            self.out_f.write('{indentspace}<{tag}> {detail} </{tag}>\n'.format(tag = 'index', detail = self.symTable.IndexOf(name), indentspace = '  ' * self.indentCnt))
        
        self.out_f.write('{indentspace}<{tag}> {detail} </{tag}>\n'.format(tag = 'defineOrUsed', detail = 'define' if defined else 'used', indentspace = '  ' * self.indentCnt))
        self.indentCnt -= 1
        self.out_f.write('{}</identifierDetails>\n'.format('  ' * self.indentCnt))


    def compileClassVarDec(self):
        self.out_f.write('{}<classVarDec>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        kind = self.curToken
        self.eat({tType.KEYWORD: ('static', 'field')})
        type = self.curToken
        # type
        if self._isIdentifier():
            # class Type
            self.compileIdentifierDetails('class', 'class', False)
        else:
            self.eat({
                tType.KEYWORD: ('int', 'char', 'boolean'),
                # tType.IDENTIFIER: None
            })
        # varName
        self.compileIdentifierDetails(kind, type, True)
        # self.eat({tType.IDENTIFIER: None})
        # (, varName)
        while self._isSymbolX(','):
            self.eat({tType.SYMBOL: ','})
            self.compileIdentifierDetails(kind, type, True)
            # self.eat({tType.IDENTIFIER: None})    
        # ;
        self.eat({tType.SYMBOL: ';'})
        self.indentCnt -= 1
        self.out_f.write('{}</classVarDec>\n'.format('  ' * self.indentCnt))

    def compileParameterList(self):
        self.out_f.write('{}<parameterList>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        # param_cnt = 0
        # ((type varName) (',' type varName)*)?
        if self.curToken != ')':
            type = self.curToken
            # type
            if self._isIdentifier():
                self.compileIdentifierDetails('class', 'class', False)
            else:
                self.eat({
                    tType.KEYWORD: ('int', 'char', 'boolean'),
                    # tType.IDENTIFIER: None
                })
            # varName
            self.compileIdentifierDetails('argument', type, True)
            # param_cnt += 1
            # self.eat({tType.IDENTIFIER: None})

            # (',' type varName)*
            while self._isSymbolX(','):
                self.eat({tType.SYMBOL: ','})
                type = self.curToken
                if self._isIdentifier():
                    self.compileIdentifierDetails('class', 'class', False)
                else:
                    self.eat({
                        tType.KEYWORD: ('int', 'char', 'boolean'),
                        # tType.IDENTIFIER: None
                    })
                self.compileIdentifierDetails('argument', type, True)
                # param_cnt += 1
                # self.eat({
                #     tType.KEYWORD: ('int', 'char', 'boolean'),
                #     tType.IDENTIFIER: None
                # })
                # self.eat({tType.IDENTIFIER: None})
        self.indentCnt -= 1
        self.out_f.write('{}</parameterList>\n'.format('  ' * self.indentCnt))
        # return param_cnt

    def compileVarDec(self):
        self.out_f.write('{}<varDec>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        # 'var' type varName (',' varName)* ';'
        self.eat({tType.KEYWORD: 'var'})
        var_cnt = 0
        type = self.curToken
        # type
        if self._isIdentifier():
            self.compileIdentifierDetails('class', 'class', False)
        else:
            self.eat({
                tType.KEYWORD: ('int', 'char', 'boolean'),
                # tType.IDENTIFIER: None
            })
        # varName
        self.compileIdentifierDetails('var', type, True)
        var_cnt += 1
        # self.eat({tType.IDENTIFIER: None})
        # (',' varName)*
        while self._isSymbolX(','):
            self.eat({tType.SYMBOL: ','})
            self.compileIdentifierDetails('var', type, True)
            var_cnt += 1
            # self.eat({tType.IDENTIFIER: None})
        # ;
        self.eat({tType.SYMBOL: ';'})
        self.indentCnt -= 1
        self.out_f.write('{}</varDec>\n'.format('  ' * self.indentCnt))
        return var_cnt

    def compileLet(self):
        # 'let' varName ('[' expression ']')? '=' expression ';'
        self.out_f.write('{}<letStatement>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.eat({tType.KEYWORD: 'let'})
        name = self.curToken
        self.compileIdentifierDetails(None, None, False)
        # self.eat({tType.IDENTIFIER: None})
        # '[' expression ']'
        if self._isSymbolX('['):
            self.eat({tType.SYMBOL: '['})
            self.compileExpression()
            self.eat({tType.SYMBOL: ']'})
        self.eat({tType.SYMBOL: '='})
        self.compileExpression()
        self.eat({tType.SYMBOL: ';'})
        seg = self.kind2seg[self.symTable.KindOf(name).value]
        index = self.symTable.IndexOf(name)
        self.vmwriter.writePop(seg, index)
        self.indentCnt -= 1
        self.out_f.write('{}</letStatement>\n'.format('  ' * self.indentCnt))

    def compileIf(self):
        # 'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}')?
        self.out_f.write('{}<ifStatement>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        # must be put previous, because if maybe in another if
        self.if_id += 1
        # className.funcName.IF_$id.F_CASE
        false_label = "{}.IF_{}.F_CASE".format(self.curFuncName, self.if_id)
        cont_label = "{}.IF_{}.CONT".format(self.curFuncName, self.if_id)

        self.eat({tType.KEYWORD: 'if'})
        self.eat({tType.SYMBOL: '('})
        # cond exp
        self.compileExpression()
        self.vmwriter.writeArithmetic('not')

        self.eat({tType.SYMBOL: ')'})
        self.eat({tType.SYMBOL: '{'})
        self.vmwriter.writeIf(false_label)
        # true branch
        self.compileStatements()
        self.vmwriter.writeGoto(cont_label)
        self.eat({tType.SYMBOL: '}'})
        self.vmwriter.writeLabel(false_label)
        if self._isElse():
            self.eat({tType.KEYWORD: 'else'})
            self.eat({tType.SYMBOL: '{'})
            # false branch
            self.compileStatements()
            self.eat({tType.SYMBOL: '}'})
        self.vmwriter.writeLabel(cont_label)

        self.indentCnt -= 1
        self.out_f.write('{}</ifStatement>\n'.format('  ' * self.indentCnt))

    def compileWhile(self):
        # 'while' '(' expression ')' '{' statements '}'
        self.out_f.write('{}<whileStatement>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.while_id += 1
        start_label = "{}.WHILE_{}.START".format(self.curFuncName, self.while_id)

        cont_label = "{}.WHILE_{}.CONT".format(self.curFuncName, self.while_id)

        self.vmwriter.writeLabel(start_label)

        self.eat({tType.KEYWORD: 'while'})
        self.eat({tType.SYMBOL: '('})
        self.compileExpression()
        self.vmwriter.writeArithmetic('not')
        self.vmwriter.writeIf(cont_label)

        self.eat({tType.SYMBOL: ')'})
        self.eat({tType.SYMBOL: '{'})
        self.compileStatements()
        self.eat({tType.SYMBOL: '}'})

        self.vmwriter.writeGoto(start_label)

        self.vmwriter.writeLabel(cont_label)

        self.indentCnt -= 1
        self.out_f.write('{}</whileStatement>\n'.format('  ' * self.indentCnt))
    
    def compileDo(self):
        # 'do' subroutineCall ';'
        self.out_f.write('{}<doStatement>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.eat({tType.KEYWORD: 'do'})
        # subroutineCall
        # subroutineName '(' expressionList ')' | (className | varName) '.' subroutineName '(' expressionList ')'
        # className|varName or subroutineName
        # fn(): method
        # obj.fn(): method

        # Cls.fn(): function
        # Cls.new(): constructor method
        varName = self.curToken
        # className
        f_type = self.symTable.TypeOf(varName)
        f_kind = self.symTable.KindOf(varName)
        f_name = f_type if f_type else varName
        self.compileIdentifierDetails(None, None, False)
        # self.eat({tType.IDENTIFIER: None})
        called_by_class = False
        if self._isSymbolX('.'):
            # (className|varName).subroutineName
            self.eat({tType.SYMBOL: '.'})
            if not f_type:
                # constructor or function, needn't push this
                called_by_class = True
            f_name = f_name + '.' + self.curToken
            self.compileIdentifierDetails('subroutine', 'subroutine', False)
            # self.eat({tType.IDENTIFIER: None})
        else:
            f_name = self.baseName + '.' + f_name

        self.eat({tType.SYMBOL: '('})
        if not called_by_class:
            if f_type:
                # obj.fn()
                seg = self.kind2seg[f_kind.value]
                index = self.symTable.IndexOf(varName)
                self.vmwriter.writePush(seg, index)
            else:
                # fn(), must be called inside method or ctor
                # push this
                self.vmwriter.writePush('pointer', 0)

        nArgs = self.compileExpressionList() + int(not called_by_class)
        self.eat({tType.SYMBOL: ')'})

        # call f
        self.vmwriter.writeCall(f_name, nArgs)
        # dump the meaningless return value
        self.vmwriter.writePop('temp', 0)

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
        else:
            self.vmwriter.writePush('constant', 0)   # void function return
        self.eat({tType.SYMBOL: ';'})
        self.vmwriter.writeReturn()
        self.indentCnt -= 1
        self.out_f.write('{}</returnStatement>\n'.format('  ' * self.indentCnt))

    # codeWrite algorithm
    def compileExpression(self):
        # term (op term)*
        self.out_f.write('{}<expression>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.compileTerm()
        # op
        while self._isSymbolX('+-*/&|<>='):
            op = self.curToken
            self.eat({tType.SYMBOL: '+-*/&|<>='})
            self.compileTerm()
            if op:
                if op in ['*', '/']:
                    self.vmwriter.writeCall(self.op2cmd[op], 2)
                else:
                    self.vmwriter.writeArithmetic(self.op2cmd[op])
        self.indentCnt -= 1
        self.out_f.write('{}</expression>\n'.format('  ' * self.indentCnt))

    def compileExpressionList(self):
        # (expression (',' expression)*)?
        self.out_f.write('{}<expressionList>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        exp_cnt = 0
        # expressionList always followed by ')'
        # if not self._isSymbolX(')'):
        if self._isExpression():
            self.compileExpression()
            exp_cnt += 1
            while self._isSymbolX(','):
                self.eat({tType.SYMBOL: ','})
                self.compileExpression()
                exp_cnt += 1
        self.indentCnt -= 1
        self.out_f.write('{}</expressionList>\n'.format('  ' * self.indentCnt))
        return exp_cnt

    def compileTerm(self):
        self.out_f.write('{}<term>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        if self._isSymbolX(('-~')): # unaryOp term
            unaryOp = self.curToken
            self.eat({tType.SYMBOL: '-~'})
            self.compileTerm()
            # TODO:'neg' or 'not'
            self.vmwriter.writeArithmetic(self.unaryOp2cmd[unaryOp])

        elif self._isSymbolX('('):  # '(' expression ')'
            self.eat({tType.SYMBOL: '('})
            self.compileExpression()
            self.eat({tType.SYMBOL: ')'})
        elif self._isIdentifier():
            name = self.curToken
            name_type = self.symTable.TypeOf(name)
            name_kind = self.symTable.KindOf(name)
            f_name = name_type if name_type else name
            self.compileIdentifierDetails(None, None, False)
            # self.eat({tType.IDENTIFIER: None})  # varName, varName[], varName() varName.foo()
            if self._isSymbolX('['):    # varName[]
                self.eat({tType.SYMBOL: '['})
                self.compileExpression()
                self.eat({tType.SYMBOL: ']'})
            elif self._isSymbolX(('.(')):  # subroutineCall
                called_by_class = False
                if self._isSymbolX('.'):
                    # (className|varName).subroutineName
                    self.eat({tType.SYMBOL: '.'})
                    if not name_type:
                        called_by_class = True
                    f_name = f_name + '.' + self.curToken
                    self.compileIdentifierDetails('subroutine', 'subroutine', False)
                    # self.eat({tType.IDENTIFIER: None})
                else:
                    f_name = self.baseName + '.' + f_name
                
                # exp is f(exp1, exp2, ... )
                self.eat({tType.SYMBOL: '('})
                if not called_by_class:
                    if name_type:
                        # push this
                        seg = self.kind2seg[name_kind.value]
                        index = self.symTable.IndexOf(name)
                        self.vmwriter.writePush(seg, index)
                    else:
                        self.vmwriter.writePush('pointer', 0)

                nArgs = self.compileExpressionList() + int(not called_by_class)
                self.eat({tType.SYMBOL: ')'})
                # call f
                self.vmwriter.writeCall(f_name, nArgs)
            else:   # varName only
                seg = self.kind2seg[self.symTable.KindOf(name).value]
                index = self.symTable.IndexOf(name)
                self.vmwriter.writePush(seg, index)

        else: # int_const, string_const, keyword_const
            if self.curType == tType.INT_CONST:
                self.vmwriter.writePush('constant', self.curToken)
            elif self.curType == tType.KEYWORD:
                if self.curToken == 'true':
                    self.vmwriter.writePush('constant', 1)
                    self.vmwriter.writeArithmetic('neg')
                elif self.curToken in ['false', 'null']:
                    self.vmwriter.writePush('constant', 0)
                elif self.curToken == 'this':
                    self.vmwriter.writePush('pointer', 0)
            else:   # tType.STRING_CONST
                pass

            # TODO
            self.eat({
                tType.INT_CONST: None,
                tType.STRING_CONST: None,
                tType.KEYWORD: ['true', 'false', 'null', 'this']
            })
    
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

    def compileSubroutineBody(self, f_name, f_type):
        self.out_f.write('{}<subroutineBody>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.eat({tType.SYMBOL: '{'})
        # varDec*
        nLocals = 0
        while self._isVarDec():
            nLocals += self.compileVarDec()
        self.vmwriter.writeFunction(f_name, nLocals)

        # deal with constructor
        if f_type == 'constructor':
            # figure out object size
            objSize = self.symTable.VarCount(SymKind.FIELD.value)
            self.vmwriter.writePush('constant', objSize)
            self.vmwriter.writeCall('Memory.alloc', 1)
            # this = &new_obj
            self.vmwriter.writePop('pointer', 0)
        elif f_type == 'method':
            # this = argument 0
            self.vmwriter.writePush('argument', 0)
            self.vmwriter.writePop('pointer', 0)

        # statements
        self.compileStatements()
        self.eat({tType.SYMBOL: '}'})
        self.indentCnt -= 1
        self.out_f.write('{}</subroutineBody>\n'.format('  ' * self.indentCnt))

    def compileSubroutineDec(self):
        self.symTable.startSubroutine()
        # reset if and while label id
        self.if_id = -1
        self.while_id = -1
        self.out_f.write('{}<subroutineDec>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        # func type
        f_type = self.curToken
        self.eat({tType.KEYWORD: ('constructor', 'function', 'method')})
        # return type
        if self._isIdentifier():
            self.compileIdentifierDetails('class', 'class', False)
        else:
            self.eat({
                tType.KEYWORD: ('int', 'char', 'boolean', 'void'),
                # tType.IDENTIFIER: None
            })
        # subroutineName

        # ClassName(FileName).FuncName
        f_name = self.baseName + '.' + self.curToken
        self.curFuncName = f_name
        self.compileIdentifierDetails('subroutine', 'subroutine', True)
        # self.eat({tType.IDENTIFIER: None})
        # (
        self.eat({tType.SYMBOL: '('})

        if f_type == 'method':
            # insert 'this' as the first argument declared to symTable
            # self.baseName is equivalent to className
            self.symTable.define('this', self.baseName, SymKind.ARG)

        # parameterList
        self.compileParameterList()
        self.eat({tType.SYMBOL: ')'})

        # subroutineBody
        self.compileSubroutineBody(f_name, f_type)
        self.indentCnt -= 1
        self.out_f.write('{}</subroutineDec>\n'.format('  ' * self.indentCnt))

    def compileClass(self):
        self.symTable.startClass()
        self.out_f.write('{}<class>\n'.format('  ' * self.indentCnt))
        self.indentCnt += 1
        self.eat({tType.KEYWORD: 'class'})
        # className --> identifier
        className = self.curToken
        assert className == self.baseName, 'Class name must agree upon file name.'
        self.compileIdentifierDetails('class', 'class', True)
        # self.eat({tType.IDENTIFIER: None})
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
        if self.tokenizer.hasMoreTokens():
            self.tokenizer.advance()
            raise_error('Unexpected "{}" of type {}.'.format(self.curToken, tTypeStr[self.curType.value]), self.tokenizer.getLineNumber())



SymKind = Enum('Symbol Kind', 
    (
        'STATIC',
        'FIELD',
        'ARG',
        'VAR'
    ),
    start = 0
)

class SymbolTable():
    def __init__(self):
        self.class_table = dict()
        self.subroutine_table = dict()
        self.running_idxs = [0] * 4
    
    def startClass(self):
        self.class_table.clear()
        self.running_idxs = [0] * 4

    def startSubroutine(self):
        self.subroutine_table.clear()
        self.running_idxs[2:4] = [0, 0]

    def define(self, name, type, kind):
        # subroutine scope
        table = self.subroutine_table if kind in [SymKind.ARG, SymKind.VAR] else self.class_table
        table[name] = {
            'type': type,
            'kind': kind,
            'idx': self.running_idxs[kind.value]
        }
        self.running_idxs[kind.value] += 1
    
    def VarCount(self, kind):
        return self.running_idxs[kind]
    

    def KindOf(self, name):
        if name in self.subroutine_table:
            return self.subroutine_table[name]['kind']
        elif name in self.class_table:
            return self.class_table[name]['kind']
        else:
            return None
        
    def TypeOf(self, name):
        if name in self.subroutine_table:
            return self.subroutine_table[name]['type']
        elif name in self.class_table:
            return self.class_table[name]['type']
        else:
            return None
        
    def IndexOf(self, name):
        if name in self.subroutine_table:
            return self.subroutine_table[name]['idx']
        elif name in self.class_table:
            return self.class_table[name]['idx']
        else:
            return None


class VMWriter():
    def __init__(self):
       self.out_f = None

    def setFileName(self, in_file):
        if self.out_f:
            self.close()
        out_file = in_file.replace('.jack', '.vm')
        self.out_f = open(out_file, 'w')
    
    # segments:
    # local, argument, this, that, constant, static, pointer, temp
    def writePush(self, segment, index):
        self.out_f.write('push {} {}\n'.format(segment, index))
        self.out_f.flush()
    # local, argument, this, that, static, pointer, temp
    def writePop(self, segment, index):
        self.out_f.write('pop {} {}\n'.format(segment, index))
        self.out_f.flush()

    # add sub neg eq gt lt and or not
    def writeArithmetic(self, cmd):
        self.out_f.write('{}\n'.format(cmd))
        self.out_f.flush()
    
    def writeLabel(self, label):
        self.out_f.write('label {}\n'.format(label))
        self.out_f.flush()

    def writeGoto(self, label):
        self.out_f.write('goto {}\n'.format(label))
        self.out_f.flush()

    def writeIf(self, label):
        self.out_f.write('if-goto {}\n'.format(label))
        self.out_f.flush()

    def writeCall(self, name, nArgs):
        self.out_f.write('call {} {}\n'.format(name, nArgs))
        self.out_f.flush()

    def writeFunction(self, name, nLocals):
        self.out_f.write('function {} {}\n'.format(name, nLocals))
        self.out_f.flush()

    def writeReturn(self):
        self.out_f.write('return\n')
        self.out_f.flush()

    def close(self):
        if self.out_f:
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
    
    tokenizer = JackTokenizer(writeToken=True)
    
    for srcName in srcNames:
        print('=' * 50)
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
        # cmpName = srcName.replace('.jack', 'T.xml')
        print('Save tokenized file to {}.'.format(tgtName))
        # print('Comparing {} to {} ... '.format(tgtName, cmpName))
        # os.system('TextComparer.sh {} {}'.format(tgtName, cmpName))

def Main():
    parser = argparse.ArgumentParser()
    # parser.add_argument('--src', type=str, default='ArrayTest/Main.jack', help='the jack file to tokenize')
    parser.add_argument('--src', type=str, default='Seven/Main.jack', help='the jack file to tokenize')

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
        print('=' * 50)
        print('Parsing file {}...'.format(srcName))
        cEngine.setFileName(srcName)
        cEngine.parse()

        tgtName = srcName.replace('.jack', 'G+.xml')
        # cmpName = srcName.replace('.jack', '.xml')
        print('Save parsed file to {}.'.format(tgtName))
        # print('Comparing {} to {} ... '.format(tgtName, cmpName))
        # os.system('TextComparer.sh {} {}'.format(tgtName, cmpName))
        # diffRet = os.system('diff --strip-trailing-cr {} {}'.format(tgtName, cmpName))
        # print('"diff {} {}" result is {}'.format(tgtName, cmpName, diffRet // 255))

if __name__ == '__main__':
    # JackTokenizerMain()
    Main()