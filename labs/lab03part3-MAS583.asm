.data
Array_A: .word 0xa1a2a3a4, 0xa5a6a7a8
msg1: .asciiz "Please enter the element type ('w'-word, 'h'-half, 'b'-byte): "
msg2: .asciiz "Here is the output (address, value in hexadecimal, value in decimal): "
msg3: "\n"
msg4: ", "
msg5: " <--- this is the input "

.text

li $v0, 4
la $a0, msg1
syscall						#prints message 1

li $v0, 4
la $a0, msg3
syscall						#prints message 3

li $v0, 12
syscall						#reads entered character

add $s1, $v0, $0				#copies value in $v0 to $s1

li $v0, 4
la $a0, msg5
syscall						#prints message 5

li $v0, 4
la $a0, msg3
syscall						#prints message 3


beq $s1, 0x62, b_Label				#checks if input = to "b" then goes to b_Label
beq $s1, 0x68, h_Label				#checks if input = to "h" then goes to h_Label
beq $s1, 0x77, w_Label				#checks if input = to "w" then goes to w_Label



w_Label:
la $t0, Array_A

	w_loop:
	lw $a0, 0($t0)
	beq $a0, 0x61656c50, w_exit
	
	add $s0, $a0, $0			#copies value of $a0 into $s0
	
	li $v0, 34
	la $a0, ($t0)
	syscall					#prints memory address as hex num
	
	li $v0, 4
	la $a0, msg4
	syscall					#prints message 4
	
	li $v0, 34
	move $a0, $s0
	syscall					#prints value in $a0 as hex num
	
	li $v0, 4
	la $a0, msg4
	syscall					#prints message 4
	
	li $v0, 1
	move $a0, $s0
	syscall					#moves value of $s0 into $a0 and prints as int num
	
	li $v0, 4
	la $a0, msg3				#prints message 3
	syscall
	
	addi $t0, $t0, 4			#incrementing words of array stored in $t0 by 4
	j w_loop
	
	w_exit:
	li $v0, 10
	syscall					#exit
	
	

h_Label:
la $t0, Array_A

	h_loop:
	lhu $a0, 0($t0)
	beq $a0, 0x00006c50, h_exit
	
	add $s0, $a0, $0			#copies value of $a0 into $s0
	
	li $v0, 34
	la $a0, ($t0)
	syscall					#prints memory address as hex num
	
	li $v0, 4
	la $a0, msg4
	syscall					#prints message 4
	
	li $v0, 34
	move $a0, $s0
	syscall					#prints value in $a0 as hex num
	
	li $v0, 4
	la $a0, msg4
	syscall					#prints message 4
	
	li $v0, 1
	move $a0, $s0
	syscall					#moves value of $s0 into $a0 and prints as int num
	
	li $v0, 4
	la $a0, msg3				#prints message 3
	syscall
	
	addi $t0, $t0, 2			#incrementing halfwords of array stored in $t0 by 2
	j h_loop
	
	h_exit:
	li $v0, 10
	syscall					#exit
	

b_Label:
la $t0, Array_A

	b_loop:
	lbu $a0, 0($t0)
	beq $a0, 0x00000050, b_exit
	
	add $s0, $a0, $0			#copies value of $a0 into $s0
	
	li $v0, 34
	la $a0, ($t0)
	syscall					#prints memory address as hex num
	
	li $v0, 4
	la $a0, msg4
	syscall					#prints message 4
	
	li $v0, 34
	move $a0, $s0
	syscall					#prints value in $a0 as hex num
	
	li $v0, 4
	la $a0, msg4
	syscall					#prints message 4
	
	li $v0, 1
	move $a0, $s0
	syscall					#moves value of $s0 into $a0 and prints as int num
	
	li $v0, 4
	la $a0, msg3				#prints message 3
	syscall
	
	addi $t0, $t0, 1			#incrementing bytes of array stored in $t0 by 1
	j b_loop
	
	b_exit:
	li $v0, 10
	syscall					#exit
