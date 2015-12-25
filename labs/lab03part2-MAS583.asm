.data
input: .word 0
msg1: .asciiz "Please enter your integer "
msg2: .asciiz "Here is the input in binary:  "
msg3: .asciiz "Here is the input in hexadecimal: "
msg4: .asciiz "\n"
msg5: .asciiz "Here is the output in binary: "
msg6: .asciiz "Here is the output in hexadecimal " 


.text
li $v0, 4		
la $a0, msg1		
syscall			#prints message 1


la $t0, input		
lw $t1, 0($t0)		#loads input

li $v0, 5		#reads integer
syscall
move $t2, $v0

li $v0, 4		
la $a0, msg2
syscall			#prints message 2

move $a0, $t2
li $v0, 35
syscall			#prints input as binary number

li $v0, 4
la $a0, msg4
syscall			#prints newline 

li $v0, 4
la $a0, msg3
syscall			#prints message 3

li $v0, 34
move $a0, $t2
syscall			#prints input as hex number

li $v0, 4
la $a0, msg4
syscall			#prints newline 


sw $t2, input		#stores integer into input
and $t3, $t2, 0xF0	#masks bits 4,5,6,7 of 32 bit word
srl $a0, $t3, 4		#shifts bits 4,5,6,7 right 4 positions
move $t4, $a0

li $v0, 4		
la $a0, msg5
syscall			#prints message 2

move $a0, $t4
li $v0, 35
syscall			#prints output as binary number

li $v0, 4
la $a0, msg4
syscall			#prints newline 

li $v0, 4
la $a0, msg6
syscall			#prints message 3

li $v0, 34
move $a0, $t4
syscall			#prints output as hex number



li $v0, 10
syscall			#exit
