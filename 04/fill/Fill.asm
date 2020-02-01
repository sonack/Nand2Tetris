// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// SCREEN: 16384 = 16K
// 8K: screen memory map
// KEYBOARD: 24576 = 24K

// initialize
// kbdptr as end edge of ptr inc



@KBD
D = A
@kbdptr
M = D


@BLACK
0; JMP



(LOOP)
@KBD
D = M

@WHITE
D; JEQ

// BLACK
// ptr = base address of screen mmap
(BLACK)
@SCREEN
D = A
@ptr
M = D

    (DRAWBLACK)
        @ptr
        D = M

        @kbdptr
        D = D - M

        @LOOP
        D; JEQ

        @ptr
        A = M
        M = -1
        
        // ptr++
        @ptr
        M = M + 1
        
        // go back
        @DRAWBLACK
        0; JMP

// WHITE
(WHITE)
@SCREEN
D = A
@ptr
M = D

    (DRAWWHITE)
        @ptr
        D = M

        @kbdptr
        D = D - M

        @LOOP
        D; JEQ

        @ptr
        A = M
        M = 0
        
        // ptr++
        @ptr
        M = M + 1
        
        // go back
        @DRAWWHITE
        0; JMP


// (END)
// @END
// 0; JMP

