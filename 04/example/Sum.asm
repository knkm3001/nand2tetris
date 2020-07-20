// アセンブラ チュートリアルのサンプルコード

    @i
    M=1
    @sum
    M=0
(LOOP)
    @i
    D=M
    @100
    D=D-A
    @END
    D;JGT // D >0 ? jump @END : continue
    @i
    D=M
    @sum
    M=D+M // sum = i + sum
    @i
    M=M+1 // i++
    @LOOP
    0;JMP
(END)
    @END
    0;JMP