.data
num1: .word 0
num2: .word 0


msg1: .asciiz "Please enter a number n: "
msg2: .asciiz "Please enter another number k: "
msg3: .asciiz "The value of choose is "
msg4: .asciiz " <--- this is the input "
msg5: .asciiz " \n"

.text
la $a0, msg1
li $v0, 4
syscall


li $a0, 5
li $a1, 2

jal choose

li $v0, 10
syscall				#exit program

choose:
	addi $sp, $sp, -12		#stores 12 bytes
	sw $s0, 0($sp)
	sw $s1, 4($sp)
	sw $ra, 8($sp)
	sw $s2, 12($sp)
	
	add $s0, $a0, $0
	add $s1, $a1, $0		#saves copy of argument registers to stack
	
	li $v0, 1
	beq $s1, $0, choose_exit	#checks to see if k = 0
	
	beq $s0, $s1, choose_exit	#checks to see if n = k
	
	li $v0, 0
	blt $s0, $s1, choose_exit	#checks to see if n < k
	
	addi $a0, $a0, -1		# n - 1
	addi $a1, $a1, -1		#k-1
	jal fact:
	
	
				
choose_exit:	