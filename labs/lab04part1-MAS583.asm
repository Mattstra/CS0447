# Matthew Strayhorn
# CS 0447


.data
some_string: .space 64
msg1: .asciiz "Please enter your string: "
msg2: .asciiz " <--- this the is input "
msg3: .asciiz "Please enter the character to replace: "
msg4: .asciiz "Here is the output: "
msg5: .asciiz "\n"


.text

la $a0, msg1
li $v0, 4
syscall

la $a0, msg5
li $v0, 4
syscall

la $a0, some_string			#loads address of string buffer
li $a1, 64				#sets max length of string to 63 characters
li $v0 ,8				#reads string
syscall
move $s0, $a0				#copies string buffer address into $s0

la $a0, msg2
li $v0, 4
syscall

la $a0, msg5
li $v0, 4
syscall


la $a0, msg3
li $v0, 4
syscall

la $a0, msg5
li $v0, 4
syscall

li $v0, 12
syscall					#reads entered character
move $a1, $v0				#copies value to $a1

la $a0, msg2
li $v0, 4
syscall

la $a0, msg5
li $v0, 4
syscall

la $a0, msg4
li $v0, 4
syscall


jal Asterisk				#calls Asterisk function

Asterisk:
move $a0, $s0				#puts string buffer address into $a0
li $t2, 0x2A				#loads asterisk character
loop:
	lb $t1, 0($a0)			#loads current character in string
	beq $a1, $t1, change		#checks to see if character matches input
	beq $t1, 0x20, printSpace	#will just print spaces
	jal invertCase
	move $s2, $a0			#copies value in $a0 
	move $a0, $t1
	li $v0, 11			#prints current character
	syscall
	move $a0, $s2			#restores original value in $a0
	j continue
	
printSpace:
	move $s3, $a0			#copies value in $a0 to $s3
	move $a0, $t1
	li $v0, 11
	syscall				#prints space character
	move $a0, $s3
	j continue
	
change:
	sb $t2, 0($a0)			#swaps current character with asterisk
	move $s1, $a0
	move $a0, $t2
	li $v0, 11
	syscall				#prints changed character as an asterisk
	move $a0, $s1

	j continue
	
continue:
	beq $t1, 0x0, exit		#checks to see if end of string has been reached
	addi $a0, $a0, 1		#increments current character in string by 1
	beq $t1, 0x0a, remove		#checks to see if current character is a newline character
	j loop
	
remove:
	sub $a0, $a0, 2			
	sb $0, 0($a0)			#removes newline when input is not max characters
	j loop
	
	
	
	
	
invertCase:
beq $t1, 0x0, exit			#jumps to exit if end of string
beq $t1, 0x0a, remove			#removes newline
bge $t1, 0x41, checkUpperCase		#checks to see if current character is greater than value of "A"


checkUpperCase:
	ble $t1, 0x5A, toLower		#checks to see if current character is less than value of "Z" (uppercase letter)
	bgt $t1, 0x5A, toUpper		#checks to see if current character is greater than value of "Z" (lowercase letter)

toLower:
	addi $t1, $t1, 32		#adds 32 to hexademical value of uppercase letter to make it lowercase
	sb $t1, 0($a0)
	jr $ra				#jumps back to after invertCase is called
	
toUpper:
	sub $t1, $t1, 32		#subracts 32 from value of lowercase letter to make it uppercase
	sb $t1, 0($a0)
	jr $ra
	
exit:
	li $v0, 10			#exit program
	syscall
