.data
msg1: .asciiz "Please enter the x coordinate of the position: "
msg2: .asciiz " Please enter the y coordinate of the position: "
msg3: .asciiz " <--- this is the input "
msg4: .asciiz "This is the size: "
msg5: .asciiz "Please enter the color ('g' -green, 'y' -yellow and 'r' -red): "

.text

la $a0, msg1
li $v0, 4
syscall				#prints msg1

li $v0, 5
syscall
move $t6, $v0			#reads x-position

la $a0, msg3
li $v0, 4
syscall

la $a0, msg2			#prints msg2
li $v0, 4
syscall

li $v0, 5
syscall
move $t4, $v0			#reads y-position

la $a0, msg3
li $v0, 4
syscall

la $a0, msg4
li $v0, 4
syscall				#prints msg4

li $v0, 5
syscall
move $t2, $v0			#reads size

la $a0, msg3
li $v0, 4
syscall

la $a0, msg5			#prints msg6
li $v0, 4
syscall

li $v0, 12
syscall
move $t3, $v0			#reads color

beq $t3, 0x72, rMask
beq $t3, 0x79, yMask
beq $t3, 0x67, gMask

rMask:
srl $t3, $t3, 1
and $t3, 0x1
beq $t3, 0x1, exitMask

yMask:
sll $t3, $t3, 1
and $t3, 0x2
beq $t3, 0x2, exitMask

gMask:
and $t3, 0x3
beq $t3, 0x3, exitMask

exitMask:

la $a0, msg3
li $v0, 4
syscall

move $a0, $t6			#puts x into $a0
move $a1, $t4			#puts y into $a1
move $a2, $t3			#puts color into $a2
move $t5, $t2			#puts size into $t5
move $t7, $t2

jal setLED
jal drawRectangle

li $v0, 10
syscall				#exit program


setLED:
# byte offset into display = y * 16 bytes + (x / 4)
	sll	$t0,$a1,4      # y * 16 bytes
	srl	$t1,$a0,2      # x / 4
	add	$t0,$t0,$t1    # byte offset into display
	li	$t2,0xffff0008 # base address of LED display
	add	$t0,$t2,$t0    # address of byte with the LED
	# now, compute led position in the byte and the mask for it
	andi	$t1,$a0,0x3    # remainder is led position in byte
	neg	$t1,$t1        # negate position for subtraction
	addi	$t1,$t1,3      # bit positions in reverse order
	sll	$t1,$t1,1      # led is 2 bits
	# compute two masks: one to clear field, one to set new color
	li	$t2,3		
	sllv	$t2,$t2,$t1
	not	$t2,$t2        # bit mask for clearing current color
	sllv	$t1,$a2,$t1    # bit mask for setting color
	# get current LED value, set the new field, store it back to LED
	lbu	$t3,0($t0)     # read current LED value	
	and	$t3,$t3,$t2    # clear the field for the color
	or	$t3,$t3,$t1    # set color field
	sb	$t3,0($t0)     # update display
	jr	$ra
	
	
	
drawRectangle:
	addi $sp, $sp, -4		
	sw $ra, 0($sp)			#saves return address onto stack


	addi $t5, $t5, -1		#subracts 1 from size
	add $a1, $a1, $t5		# $a1 holds position (y + size-1)
	add $t8, $a1, $0		#copies value saved in $a1

	jal drawVerticalLine
	
	addi $t7, $t7, -1		#subtracts 1 from size
	add $a0, $a0, $t7		# $a0 holds position (x +size -1, y)
	add $t9, $a0, $0		#copies value saved in $a0
	
	jal drawHorizontalLine
	
	add $a0, $t9, $0
	add $a1, $t8, $0
	jal setLED
	
	add $a1, $t8, $0
	jal drawVerticalLine
	
	add $a0, $t9, $0
	add $a1, $t8, $0
	jal drawHorizontalLine
	
	lw $ra, 0($sp)			#loads return address
	addi $sp, $sp, 4		#restores stack pointer
	jr $ra 				#jumps back to previous address

drawVerticalLine:
	addi $sp, $sp, -4		
	sw $ra, 0($sp)			#saves return address onto stack

	jal setLED			# gets position of last LED in vertical line
	Vloop:
		addi $a1, $a1, -1
		beq $a1, $t4, exit_Vloop
		jal setLED
		j Vloop
		
	exit_Vloop:
	lw $ra, 0($sp)			#loads return address
	addi $sp, $sp, 4		#restores stack pointer
	jr $ra 				#jumps back to drawRectangle 
	
drawHorizontalLine:
	addi $sp, $sp, -4		
	sw $ra, 0($sp)			#saves return address onto stack

	jal setLED			# gets position of last LED in vertical line
	Hloop:
		addi $a0, $a0, -1
		beq $a0, $t6, exit_Hloop
		jal setLED
		j Hloop
		
	exit_Hloop: 
	lw $ra, 0($sp)			#loads return address
	addi $sp, $sp, 4		#restores stack pointer
	jr $ra 				#jumps back to drawRectangle 
	













