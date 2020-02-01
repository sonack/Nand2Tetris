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



// @KBD
// D = A
// @kbdptr
// M = D

(LOOP)

// get input key
@KBD
D = M

@RELEASE
D, JEQ

// hold
@fillval
M = -1
@DRAW
0; JMP

(RELEASE)
@fillval
M = 0

(DRAW)
// if lastfillval == fillval, then do nothing
@fillval
D = M

@lastfillval
D = D - M

@LOOP
D; JEQ

@lastfillval
M = D

// ptr = base address of screen mmap
@SCREEN
D = A
@ptr
M = D
    (DRAWLOOP)
        @ptr
        D = M

        @KBD
        D = D - A

        @LOOP
        D; JEQ
        
        @fillval
        D = M

        @ptr
        A = M

        M = D
        
        // ptr++
        @ptr
        M = M + 1
        
        // go back
        @DRAWLOOP
        0; JMP

(END)
@END
0; JMP

