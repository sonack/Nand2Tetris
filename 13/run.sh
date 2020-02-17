#!/bin/bash

JackCompiler.sh $1
python VMTranslator.py --src $1
Assembler.sh $1/*.asm
