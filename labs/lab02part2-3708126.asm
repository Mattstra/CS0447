
.data
msg1: .asciiz "What is the first value? \n"
msg2: .asciiz "What is the second value? \n"
msg3: .asciiz "The sum of "
msg4: .asciiz " and "
msg5: .asciiz " is "

.text
li $v0, 4		#print string
la $a0, msg1		#load address of string to print
syscall

li $v0, 5		#reads integer
syscall
move $t1, $v0

li $v0, 4		#print string
la $a0, msg2		#load address of string to print
syscall

li $v0, 5		#reads integer
syscall
move $t2, $v0

add $t3, $t1, $t2	#adds both values

li $v0, 4		#print string
la $a0, msg3		#load address of string to print
syscall

li $v0, 1
move $a0, $t1		#puts value of t1 into a0
syscall

li $v0, 4		#print string
la $a0, msg4		#load address of string to print
syscall

li $v0, 1
move $a0, $t2		#puts value of t2 into a0
syscall

li $v0, 4		#print string
la $a0, msg5		#load address of string to print
syscall

li $v0, 1
move $a0, $t3		#puts value of t3 into a0
syscall


li $v0, 10		#terminate
syscall
