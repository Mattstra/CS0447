# Matthew Strayhorn
# CS 0447

.data
input_str: .space 8

names:  .asciiz "julia", "steven", "daniel", "kate", "adrian"
cities: .asciiz "boston", "new york", "chicago", "pittsburgh", "denver"


msg1: .asciiz "Please enter a name: "
msg2: .asciiz " <--- this is the input "
msg3: .asciiz "City is: "
msg4: .asciiz "Not found! "
msg5: .asciiz "\n"

.text

la $a0, msg1
li $v0, 4
syscall

la $a0, input_str
li $a1, 8
li $v0, 8
syscall
la $a2, names						#loads starting address of names
move $s1, $a0						#copies string buffer address


checkInput:
	lb $t0,0($a0)
	beq $t0, 0x0, exitCheck				#if there isn't a newline character, skips this part
	addi $a0, $a0, 1
	beq $t0, 0x0a, newLine				#checks to see if there is a newline character
	j checkInput
	
newLine:
	sub $a0, $a0, 1			
	sb $0, 0($a0)					#replaces newline with null character
	j checkInput	
	
exitCheck:


strSize:
move $a3, $a2						#copies address into $a3
	loop:
		lb $t0, 0($a2)
		beq $t0, 0x0, exitSize
		addi $t1, $t1, 1			#counts number of characters in string before null
		addi $a2, $a2, 1			#increment byte in string
		j loop
		
	exitSize:
	move $v0, $t1					# $v0 contains number of characters in string
	move $a2, $a3					#puts address back into register $a2
	
checkJulia:

move $a0, $s1						#puts string buffer address into $a0

	jLoop:
		lb $t2, 0($a0)
		lb $s0, 0($a2)
		bne $t2, $s0, checkSteven
		beq $t2, $s0, jcharMatch
		addi $a0, $a0, 1
		addi $a2, $a2, 1
		j jLoop
		
	jcharMatch:
		beq $t2, 0x0, jExit
		addi $a0, $a0, 1
		addi $a2, $a2, 1
		j jLoop
		
	jExit:
	li $v1, 1


checkSteven:
move $a3, $a2
move $a0, $s1
	sLoop:
		lb $s0, 6($a2)					#loads string at index 2
		lb $t2, 0($a0)
		bne $t2, $s0, checkDaniel
		beq $t2, $s0, scharMatch
		addi $a0, $a0, 1
		addi $a2, $a2, 1
		j sLoop
		
	scharMatch:
		beq $t2, 0x0, sExit
		addi $a0, $a0, 1
		addi $a2, $a2, 1
		j sLoop
		
	sExit:
			
				
checkDaniel:
move $a3, $a2
move $a0, $s1
	dLoop:
		lb $s0, 13($a2)					#loads string at index 3
		lb $t2, 0($a0)
		bne $t2, $s0, checkKate
		beq $t2, $s0, dcharMatch
		addi $a0, $a0, 1
		addi $a2, $a2, 1
		j dLoop
		
	dcharMatch:
		beq $t2, 0x0, dExit
		addi $a0, $a0, 1
		addi $a2, $a2, 1
		j dLoop
		
	dExit:				
						
							
checkKate:
move $a3, $a2
move $a0, $s1		
	kLoop:
		lb $s0, 20($a2)					#loads string at index 4
		lb $t2, 0($a0)
		bne $t2, $s0, checkAdrian
		beq $t2, $s0, kcharMatch
		addi $a0, $a0, 1
		addi $a2, $a2, 1
		j kLoop
		
	kcharMatch:
		beq $t2, 0x0, kExit
		addi $a0, $a0, 1
		addi $a2, $a2, 1
		j kLoop
		
	kExit:
	
checkAdrian:
move $a3, $a2
move $a0, $s1
	aLoop:
		lb $s0, 25($a2)					#loads string at index 5
		lb $t2, 0($a0)
		bne $t2, $s0, notFound
		beq $t2, $s0, acharMatch
		addi $a0, $a0, 1
		addi $a2, $a2, 1
		j aLoop
		
	acharMatch:
		beq $t2, 0x0, aExit
		addi $a0, $a0, 1
		addi $a2, $a2, 1
		j aLoop
		
	notFound:
		
		
	aExit:												
										

li $v0, 10
syscall						#exit program

