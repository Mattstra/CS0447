Matthew Strayhorn
mas583@pitt.edu

Decoders:
1. Master Control
2. Main Control
3. PC Control
4. Shift Control
5. Output Control


Master Control signals:
1. Operation
2. setRegValue
3. setRegValue2
4. setRegValue3
5. WriteEn

The purpose of the operation control signal was to select which of the other decoders would recieve the opcode through a
demultiplexer. Output 0 leads to the Output Control, 1 leads to Main Control, 2 leads to Shift Control, and 3 leads to PC
Control. The WriteEn signal controls the enable port of the register file. The three setRegVal signals control three muxes
that select only to correct value that is to be written to a register since different components attempt to write a value
to a register.


Main Control signals:
1. AluSrc
2. Operation
3. Mem2Reg
4. ExtendType
5. MemRead
6. MemWrite

The AluScr signal determines whether the 16 bit immediate or the value read from $rt is the second input into the ALU.
The Operation signals selects the operation of the ALU based on the opcode. The Mem2Reg signal control the mux that selects
the value loaded from the data memory or the ouput of the ALU. The ExtendType signal controls the mux that selects whether
the immediate is sign or zero extended. The MemRead and MemWrite signals control the data str and ld ports of the data
memory where MemRead activates the ld port for loads and MemWrite activates the str port for store instructions.


PC Control signals:
1. Jump Type
2. Jump
3. Branch
4. Comparison

The JumpType signal told the jumpHandler component which of the three types of jumps was selected based on the opcode.
The Jump signal controls the jump mux and determines whether the new PC value for a jump is selected or the value passed
through from the branch mux which contains either a PC value from a branch or the PC+1 value. The Branch signal is a 1 when
the opcode for a branch is passed to PC Control and is "Anded" with the output of the branch handler to control the
branch mux that determines whether a branch is to be taken or not. The Comparison signal tells the branch handler what
kind of comparison to do for example 00 tells the branch handler to do the comparison: $rs > 0 for branch positive
instructions.


Shift Control signals:
1. RtOrShamt
2. Direction

The RtOrShamt signals tells the shift handler whether $rt is being used (for sllv and srlv instructions) or shamt(for sll 
and srl instructions). The Direction signal then tells the shift handler whether it is a left or right shift for any of
the shift instructions.


Output Control signals:
1.Put
2.Halt

The Put signal controls the enable port of the register that updates the LED Hex digit dispay. This signal is used to
implement put instructions. The Halt signal controls the enable port of the Program Counter. It also connects to single
LED. This signal is used to implement halt instructions.



I was able to implement all of the instructions listed in the packet. I then carefully tested this design using all of the 
test programs listed on the website. I was able to successfully achieve the correct results for each of the programs and I
didn't notice any bugs. I also wrote a few simple programs that tested all of the functionality and I didn't notice any 
bugs.

Working Instructions:
1. and
2. nor
3. add
4. sub
5. sub
6. addi
7. addui
8. sll
9. srl
10. sllv
11. srlv
12. lw
13. sw
14. halt
15. put
16. bp
17. bn
18. bx
19. bz
20. jr
21. jal
22. j
