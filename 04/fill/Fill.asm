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

// CPU Emulator の Animate: No animation で実行すること

(LOOP)
    @SCREEN //RAM[16384]
    D=A
    @address
    M=D
    @24576 // key address
    D=M
    @Black
    D;JGT // D > 0 ? goto Black : pass


    (White)
        @address
        D=M
        A=D
        M=0 // bit:0*16
        
        @address
        M=M+1
        D=M
        
        @24576 //16384 + 8192( 512px/16 * 256px)
        D=D-A

        @LOOP
        D;JGE // D >= 0 ? goto LOOP : pass (最後まで塗ったら抜ける)
    @White
    0;JMP

    (Black)
        @address
        D=M
        A=D
        M=-1

        @address
        M=M+1 // メモリ位置更新
        D=M

        @24576 //16384 + 8192
        D=D-A

        @LOOP
        D;JGE // D >= 0 ? goto LOOP : pass (最後まで塗ったら抜ける)
    @Black
    0;JMP
    
    @LOOP
    0;JMP