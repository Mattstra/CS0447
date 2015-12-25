# Matthew Strayhorn
# CS 0447 Project 1:

.data

card_Values: .word 0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6
6,6,7,7,7,7,8,8,8,8,9,9,9,9

exit_Text1: .asciiz "Game Over! You matched "
exit_Text2: .asciiz " cards! "

font: .half 
##########################
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		##########################
		0xC000, #----X---   0000 0000 1100 0000    
		0xC003, #---XX---   0000 0011 1100 0000   
		0xC00C, #--X-X---   0000 1100 1100 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0xFC3f, #-XXXXXX-   0011 1111 1111 1100   
		##########################
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x3000, #-----X--   0000 0000 0011 0000   
		0xC000, #----X---   0000 0000 1100 0000    
		0x0003, #---X----   0000 0011 0000 0000    
		0x000C, #--X-----   0000 1100 0000 0000    
		0x0030, #-X------   0011 0000 0000 0000    
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		##########################
		0xF03F, #-XXXXX--   0011 1111 1111 0000    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0xF03F, #-XXXXX--   0011 1111 1111 0000    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		##########################
		0x0C00, #------X-   0000 0000 0000 1100    
		0xCC00, #----X-X-   0000 0000 1100 1100    
		0x0C03, #---X--X-   0000 0011 0000 1100    
		0x0C0C, #--X---X-   0000 1100 0000 1100    
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		##########################
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		0x0030, #-X------   0011 0000 0000 0000    
		0x0030, #-X------   0011 0000 0000 0000    
		0xF03F, #-XXXXX--   0011 1111 1111 0000    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0xF03F, #-XXXXX--   0011 1111 1111 0000    
		##########################
		0x0C00, #-----X--   0000 0000 0000 1100    
		0x3000, #----X---   0000 0000 0011 0000    
		0x0003, #---X----   0000 0011 0000 0000    
		0xF00F, #--XXXX--   0000 1111 1111 0000
		0x0C30, #-X----X-   0011 0000 0000 1100    	
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		##########################
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x3000, #-----X--   0000 0000 0011 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0x0003, #---X----   0000 0011 0000 0000    
		0x000C, #--X-----   0000 1100 0000 0000    
		0x0030, #-X------   0011 0000 0000 0000    
		0x0030, #-X------   0011 0000 0000 0000    
		##########################
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100   
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		##########################
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100   
		0xFC0F, #--XXXXX-   0000 1111 1111 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100
		########################## (CARD 10)
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		########################## (CARD 11)
		0x0000, #--------   0000 0000 0000 0000
		0x3C3C, #-XX--XX-   0011 1100 0011 1100
		0x0000, #--------   0000 0000 0000 0000
	     	0x0C30, #-X----X-   0011 0000 0000 1100
		0x300C, #--X--X--   0000 1100 0011 0000
		0xC003, #---XX---   0000 0011 1100 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		########################## (CARD 12)
		0x0000, #--------   0000 0000 0000 0000
		0x3C3C, #-XX--XX-   0011 1100 0011 1100
		0x0000, #--------   0000 0000 0000 0000
		0xC003, #---XX---   0000 0011 1100 0000
		0x300C, #--x--X--   0000 1100 0011 0000
		0x0C30, #-X----X-   0011 0000 0000 1100
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		########################## (CARD 13)
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		########################## (CARD 14)
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0xC003, #---XX---   0000 0011 1100 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0xC003, #---XX---   0000 0011 1100 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000  #--------   0000 0000 0000 0000
.text
#**********************************Registers $s5, $s6, $s7 are used to store minutes, tens, seconds



jal shuffle_Deck				
jal draw_initMin
jal draw_colon
jal draw_tens
jal draw_secs
jal draw_board
jal init_Box
jal get_Current
j init_timer

	get_Current:				#registers $t8, $t9 are used for x and y position of cards on board
		li $t9, 3
		li $t8, 2
		jr $ra


	draw_initMin:
	addi $sp, $sp, -4
	sw $ra, 0($sp)						#saves return address onto the stack

	la $s0, font						#loads address of font array
	la $s1, 0xFFFF0008					#loads starting address of of LED memory
	addi $s3, $s0, 62 					#puts offset of last row of LEDs into $t3
	li $s4, 48						#puts array index into $s4
	add $s1, $s1, 4						#increment LED address by 4 to get starting LED position				
	jal drawFunction
	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
	
	
	
	draw_min:
	addi $sp, $sp, -4
	sw $ra, 0($sp)						#saves return address onto the stack

	la $s0, font						#loads address of font array
	la $s1, 0xFFFF0008					#loads starting address of of LED memory
	addi $s3, $s0, 14 					#puts offset of last row of LEDs into $t3
	move $s4, $s7
	add $s1, $s1, 4						#increment LED address by 4 to get starting LED position				
	jal drawFunction

	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
	
	draw_colon:
		addi $sp, $sp, -4
		sw $ra, 0($sp)						#saves return address onto the stack
	
		la $s0, font						#loads address of font array
		la $s1, 0xFFFF0008					#loads starting address of of LED memory
		addi $s3, $s0, 238 					#puts offset of last row of LEDs into $t3
		li $s4, 224						#puts array index into $t4
		add $s1, $s1, 6						#increment LED address by 6 to get starting LED position				
		jal drawFunction
	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
	
	
	
	
	draw_tens:
		addi $sp, $sp, -4
		sw $ra, 0($sp)						#saves return address onto the stack
		move $s4, $s6						#puts tens value into $s4
		la $s0, font						#loads address of font array
		la $s1, 0xFFFF0008					#loads starting address of of LED memory
		addi $s3, $s0, 14 					#puts offset of last row of font LEDs into $s3
		add $s1, $s1, 8						#increment LED address by 8 to get starting LED position				
		jal drawFunction
	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
			
		
	draw_secs:							#$s4 holds array index
		addi $sp, $sp, -4
		sw $ra, 0($sp)						#saves return address onto the stack
		move $s4, $s5
		la $s0, font						#loads address of font array
		la $s1, 0xFFFF0008					#loads starting address of of LED memory
		add $s1, $s1, 10					#increment LED address by 10 to get starting LED position				
		jal drawFunction
	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra		
	
	
	drawFunction:
		addi $sp, $sp, -4
		sw $ra, 0($sp)						#saves return address onto the stack

		add $s0, $s0, $s4					#adds index to address of font array
		addi $s3, $s0, 14 					#puts offset of last row of LEDs into $s3
		lh $s2,($s0)
		sh $s2, 0($s1)						#loads and stores inital row of LEDs 
	
	draw_loop:
		addi $s0, $s0, 2				#increments through font array
		addi $s1, $s1, 16				#increments through LED memory
		lh $s2, ($s0)
		sh $s2, 0($s1)
		beq $s0, $s3, exit_draw				#checks to see if $s0 = $s3
		j draw_loop
	
		exit_draw:
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
		
		
	
#****************************************draws cards onto the board****************************************
	draw_board:
	
		addi $sp, $sp, -4
		sw $ra, 0($sp)					#saves return address onto the stack
								
		la $s1, 0xFFFF0008				#loads starting address of LED memory
		la $s0, font					#loads address of fonts
		la $t7, card_Values
		li $t8, 0					#initiates y to 0
		li $t9, 0					#initiates x to 0
		addi $s1, $s1, 160				#loads address of starting LEDs
		addi $s3, $s0, 14				#puts offset of last row of font LEDs into $s3
		li $s4, 160					#index of blank card in font array
		
		drawBoard_loop:
			mul $a0, $t9, 8				# x*8
			add $a0, $a0, $t8			# (x*8) + y
			add $t7, $t7, $a0
			jal drawFunction
			la $s0, font				#resets $s0 to original address
			addi $s3, $s3, -14			#gets first row of font LEDs
			addi $s1, $s1, -112			#moves currently selected LED back up 7 rows
			addi $s1, $s1, 2
			addi $t8, $t8, 1
			beq $a0, 39, exit_boardLoop		#Checks to see if the last card has been drawn
			beq $t8, 8, inc_Y			#Checks for when x = 8
			
			j drawBoard_loop
			
			inc_Y:
				addi $s1, $s1, 128		#Increments LED position by 8 bytes
				addi $t9, $t9, 1		#Increments Y by 1
				li $t8, 0			#Resets X to 0
				j drawBoard_loop
				
			exit_boardLoop:
				lw $ra, 0($sp)
				addi $sp, $sp, 4
				jr $ra
	
	
	
	
#*********************************draws initial card selector*************************8	
	
	init_Box:	
	addi $sp, $sp, -4
	sw $ra, 0($sp)			#saves return address onto the stack	
				
	li	$s1,1			# $s1 holds current box color
	move	$a0,$s1			# draw initial box
	jal	_drawBox

	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
	
_drawBox:
	addi	$sp,$sp,-4		# non-leaf, save some stack space
	sw	$ra,0($sp)
	move	$a2,$a0			# copy color to $a2
	li	$a0,24
	li	$a1,27
_drawBoxL:
	jal	setLED
	addi	$a0,$a0,1		# increment x
	slti	$t0,$a0,32
	bne	$t0,$0,_drawBoxL
	li	$a0,24			# reset x position
	addi	$a1,$a1,1		# increment y
	slti	$t0,$a1,37
	bne	$t0,$0,_drawBoxL
	
	jal init_redraw
	
	lw	$ra,0($sp)		# reload spilled $ra value
	addi	$sp,$sp,4
	jr	$ra	
	



	init_redraw:
		addi $sp, $sp, -4
		sw $ra, 0($sp)					#saves return address onto the stack	
		
		li $a0, 3
		move	$a2,$a0			# copy color to $a2
		li	$a0,25
		li	$a1,28
	draw_Current:
		jal	setLED
		addi	$a0,$a0,1		# increment x
		slti	$t0,$a0,31
		bne	$t0,$0,draw_Current
		li	$a0,25			# reset x position
		addi	$a1,$a1,1		# increment y
		slti	$t0,$a1,36
		bne	$t0,$0,draw_Current
		
		
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra

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
	
	

	
#***************************************shuffles the deck by randomizing card_Values array
shuffle_Deck:
			addi $sp, $sp, -16
			sw $s0, 0($sp)
			sw $s1, 4($sp)
			sw $s2, 8($sp)
			sw $s3, 12($sp)
			sw $s4, 16($sp)
								
			la $s0, card_Values
			li $s1, 40

			rand_gen:
			addi $s1, $s1, -1			#decrements length
			move $a1, $s1				#sets upper bound for random num
			li $v0, 42
			syscall
			move $s2, $a0				#gets random number
			mul $s3, $s1, 4 
			add $s0, $s0, $s3			
								#goes to index in array indicated by $s2 index = [i-1]
			lw $s4, 0($s0)
			la $s0, card_Values
			mul $t0, $s2, 4
			add $s0, $s0, $t0
			lw $t1, 0($s0)
			move $t2, $s4
			move $s4, $t1

			la $s0, card_Values
			mul $s3, $s1, 4
			add $s0, $s0, $s3
			sw $s4, 0($s0)
			move $t1, $t2

			la $s0, card_Values
			mul $t0, $s2, 4
			add $s0, $s0, $t0
			sw $t1, 0($s0)

			move $a0, $s4
			li $v0, 1
			syscall

			la $s0, card_Values
			bne $s1, 2, rand_gen
			
						
			lw $s0, 0($sp)
			lw $s1, 4($sp)
			lw $s2, 8($sp)
			lw $s3, 12($sp)
			lw $s4, 16($sp)
			addi $sp, $sp,16			
			jr $ra
	
	

#************************************timer loop***************************************
	

init_timer:
addi $s5, $0, 10			#register to hold seconds
addi $s6, $0, 10			#register to hold tens
addi $s7, $0, 3				#register to hold minutes	
		
				
li $v0, 30				#get system time
syscall

move $t0, $a0
addi $t1, $t0, -180000			#$t1 = system time - 3 minutes
addi $t4, $t0, 1000			#$t4 = system time + 1 second
	


timer_loop:
	li $v0, 30
	syscall
	
	move $t2, $a0
	sub $t3, $t2, $t0			#subtracts new time from last time to get elapsed time
	sub $t5, $t4, $t1			#gets difference between the expired time and current time value
	beq $t5, 1000, exit_timer		#checks to see if time expired
	bge $t6, 1000, update_timer		#goes to update timer when a second has passed
	blt $t3, 1000, run_again		#checks to see if elapsed time is less than 1 sec
	
run_again:
		
	j read_keyPress				#reads keypress
	
after_poll:
	lw $t0, 0($sp)
	lw $t1, 4($sp)
	lw $t2, 8($sp)
	lw $t3, 12($sp)
	lw $t4, 16($sp)
	lw $t5, 20($sp)
	addi $sp, $sp, 20			#restores overwritten values

	add $t6, $t6, $t3			#adds elapsed time each run 
	li $t3, 0					
	li $t5, 0
	move $t0, $t2				
	j timer_loop 
	
update_timer:
	addi $t1, $t1, 1000			#add 1 sec to $t1
	jal time_remaining
	
min_pass:
	li $t6, 0
	li $t3, 0
	li $t5, 0
	j timer_loop

exit_timer:

la $a0, exit_Text1
li $v0, 4
syscall

la $a0, exit_Text2
li $v0, 4
syscall	
		
				
li $v0, 10
syscall	


#*******************************************updates timer on display*******************************																						


time_remaining:

	addi $sp, $sp, -4
	sw $ra, 0($sp)						#saves return address onto the stack
	
	jal update_secs

	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	

	update_secs:
		addi $sp, $sp, -4
		sw $ra, 0($sp)					#saves return address onto the stack
	
	first_tensDec:	
		beq $s6, 0x0a, dec_tens
		bne $s6, 0x0a, after_tensDec


	dec_tens:				
		jal update_tens
		j after_tensDec
		
	after_tensDec:	
		addi $s5, $s5, -1				#subtracts 1 second
		beq $s5, 0xffffffff, reset_secs			#checks to see if $s4 = -1
		mul $s5, $s5, 8					
		mul $s5, $s5, 2					#multiplies second by 8 then again by 2 to get font array index
		jal draw_secs
		div $s5, $s5, 2
		div $s5, $s5, 8					#divides index by 8 then again by 2 to get number of seconds back
		
		
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
		

		reset_secs:
			addi $sp, $sp, -4
			sw $ra, 0($sp)				#saves return address onto the stack
		
			li $s5, 10				#resets $s5 to 10
			jal update_tens
			jal update_secs
			
			j min_pass
			
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			jr $ra
					
	update_tens:
		addi $sp, $sp, -4
		sw $ra, 0($sp)					#saves return address onto the stack
		
		beq $s6, 0x0a, sub_tens
		addi $s6, $s6, -1				#subtracts 1
		
		
	cont_tensUpdate:
		beq $s6, 0xffffffff, reset_tens			#checks to see if $s6 = -1
		mul $s6, $s6, 8					
		mul $s6, $s6, 2					#multiplies second by 8 then again by 2 to get font array index
		jal draw_tens
		div $s6, $s6, 2
		div $s6, $s6, 8					#divides index by 8 then again by 2 to get number of seconds back
		
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra


		sub_tens:
			addi $s6, $s6, -5				# subtracts 5
			jal update_mins					#sets minute counter
			j cont_tensUpdate

		reset_tens:
			li $s6, 10				#resets $s6 to 10
			j update_tens
				
		update_mins:
			addi $sp, $sp, -4
			sw $ra, 0($sp)					#saves return address onto the stack
			
			
			addi $s7, $s7, -1				#subtracts 1
			mul $s7, $s7, 8					
			mul $s7, $s7, 2					#multiplies minute by 8 then again by 2 to get font array index
			jal draw_min
			div $s7, $s7, 2
			div $s7, $s7, 8					#divides index by 8 then again by 2 to get number of minutes back
			
			
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			jr $ra
			
			
#********************************************reads keypresses**************************************************			
				
	read_keyPress:
		addi $sp, $sp, -20
		sw $t0, 0($sp)
		sw $t1, 4($sp)
		sw $t2, 8($sp)
		sw $t3, 12($sp)
		sw $t4, 16($sp)
		sw $t5, 20($sp)							


	poll:	la	$v0,0xffff0000		# address for reading key press status
		lw	$t7,0($v0)		# read the key press status
		andi	$t7,$t7,1
		beq	$t7,$0,after_poll	# no key pressed
		lw	$t7,4($v0)		# read key value
		
		
	lkey:	addi	$v0,$t7,-226		# check for left key press
		bne	$v0,$0,rkey		# wasn't left key, so try right key
		beq	$t9, 0, cStop
		addi	$t9, $t9, -1		#decrement x pos
		mul	$a0, $t9, 8		#gets x position of card in LEDs  (x*8)
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8		#gets y position of card in LEDs  (8*(y+1)) + (y+1)
		addi	$t4, $a0, 8		#gets ending x position in LEDs
		addi	$t5, $a1, 10		#gets ending y position in LEDs
		jal	left_Button		#draw box
		addi	$t8, $t8, -1		#gets y position of card back
		jal	draw_selected
		addi	$t8, $t8, -1		#gets y position of card back
		jal	clear_selectionLeft
		addi	$t8, $t8, -1		#gets x position of card back
		addi	$t9, $t9, -1		#gets y position of card back
		
		j	after_poll
		
		
	rkey:	addi	$v0,$t7,-227		# check for right key press
		bne	$v0,$0,ukey		# wasn't right key, so try up key
		beq	$t9, 7, cStop
		addi	$t9, $t9, 1		#increment x pos 
		mul	$a0, $t9, 8		#gets x position of card in LEDs
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8		#gets y position of card in LEDs
		addi	$t4, $a0, 8		#gets ending x position in LEDs
		addi	$t5, $a1, 10		#gets ending y position in LEDs
		jal	right_Button		#draw box
		addi	$t8, $t8, -1		#gets y position of card back
		jal	draw_selected
		addi	$t8, $t8, -1
		jal	clear_selectionRight
		addi	$t8, $t8, -1		#gets y position of card back
		addi	$t9, $t9, 1		#gets x position of card back
		
		j	after_poll
		
		
	ukey:	addi	$v0, $t7, -224		# check for up key press
		bne	$v0,$0,dkey		# wasn't up key, so try down key
		beq	$t8, 0, cStop
		addi	$t8, $t8, -1		#decrement y pos 
		mul	$a0, $t9, 8		#gets x position of card in LEDs
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8		#gets y position of card in LEDs
		addi	$t4, $a0, 8		#gets ending x position in LEDs
		addi	$t5, $a1, 10		#gets ending y position in LEDs
		jal	up_Button
		addi	$t8, $t8, -1		#gets y position of card back
		jal	draw_selected
		
		jal	clear_selectionDown
		addi	$t8, $t8, -2		#gets y position of card back
		
		j	after_poll
		
		
		
		
	dkey:	addi	$v0, $t7, -225		# check for down key press
		bne	$v0,$0,bkey		# wasn't down key, so try center key
		beq	$t8, 4, cStop
		addi	$t8, $t8, 1		#increment y pos 
		mul	$a0, $t9, 8		#gets x position of card in LEDs
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8		#gets y position of card in LEDs
		addi	$t4, $a0, 8		#gets ending x position in LEDs
		addi	$t5, $a1, 10		#gets ending y position in LEDs
		jal	down_Button
		addi	$t8, $t8, -1		#gets y position of card back
		jal	draw_selected
		addi	$t8, $t8, -2
		jal	clear_selectionUp
		
		j	after_poll
		
	bkey:	addi	$v0,$t7,-66		# check for center key press
		bne	$v0,$0,after_poll	# invalid key, ignore it
		jal	b_button
		
		j	after_poll
		
			
									
	cStop:
		j after_poll
										
			
#*********************************Left button******************************************			
left_Button:

	addi	$sp,$sp,-4		# non-leaf, save some stack space
	sw	$ra,0($sp)

move_boxLeft:
	li	$a2,1			# $a2 holds box color
	jal 	setLED
	addi	$a0, $a0, 1
	bne	$t4, $a0, move_boxLeft
	
	
	move	$a0, $t9
	mul	$a0, $t9, 8		#resets x position
	addi	$a1, $a1, 1		#increments y position
	bne	$t5, $a1, move_boxLeft
	

	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

	
	draw_selected:
		addi $sp, $sp, -4
		sw $ra, 0($sp)				#saves return address onto the stack
		
		li 	$a0, 0
		li	$a1, 0
			
	get_position:	
		li 	$a0, 3
		move	$a2,$a0			# copy color to $a2
		
		mul $a0, $t9, 8
		addi $a0, $a0, 1		#gets x position of card in LEDs
		
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8
		addi	$a1, $a1, 1		#gets y position of card in LEDs
		addi	$t4, $a0, 6		#gets ending x position in LEDs
		addi	$t5, $a1, 8		#gets ending y position in LEDs
		
	draw_sCard:
	li	$a2,3			# $a2 holds box color
	jal 	setLED
	addi	$a0, $a0, 1
	bne	$t4, $a0, draw_sCard
	
	
	move	$a0, $t9
	mul	$a0, $t9, 8
	addi	$a0, $a0, 1		#resets x position
	addi	$a1, $a1, 1		#increments y position
	bne	$t5, $a1, draw_sCard
	
	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
		
		
		
	clear_selectionLeft:
		addi	$sp,$sp,-4		# non-leaf, save some stack space
		sw	$ra,0($sp)
		li $a0, 0
		li $a1, 0
		addi $t9, $t9, 1		#get x position of card to the right
		mul	$a0, $t9, 8		#gets x position of card in LEDs
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8		#gets y position of card in LEDs
		addi	$t4, $a0, 8		#gets ending x position in LEDs
		addi	$t5, $a1, 10		#gets ending y position in LEDs

	clear_boxLeft:
		li	$a2,0			# $a2 holds box color
		jal 	setLED
		addi	$a0, $a0, 1
		bne	$t4, $a0, clear_boxLeft
	
	
		move	$a0, $t9
		mul	$a0, $t9, 8		#resets x position
		addi	$a1, $a1, 1		#increments y position
		bne	$t5, $a1, clear_boxLeft
		
	reset_cardLeft:
		addi	$t8, $t8, -1
		li 	$a0, 0
		li	$a1, 0
		li 	$a0, 3
		move	$a2,$a0			# copy color to $a2
		
		mul $a0, $t9, 8
		addi $a0, $a0, 1		#gets x position of card in LEDs	
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8
		addi	$a1, $a1, 1		#gets y position of card in LEDs
		addi	$t4, $a0, 6		#gets ending x position in LEDs
		addi	$t5, $a1, 8		#gets ending y position in LEDs
		
	draw_resetLeft:	
		li	$a2,3			# $a2 holds box color
		jal 	setLED
		addi	$a0, $a0, 1
		bne	$t4, $a0, draw_resetLeft
	
	
		move	$a0, $t9
		mul	$a0, $t9, 8
		addi	$a0, $a0, 1		#resets x position
		addi	$a1, $a1, 1		#increments y position
		bne	$t5, $a1, draw_resetLeft

		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
		
		
		

#*****************************************right button***********************************
right_Button:

	addi	$sp,$sp,-4		# non-leaf, save some stack space
	sw	$ra,0($sp)

move_boxRight:
	li	$a2,1			# $a2 holds box color
	jal 	setLED
	addi	$a0, $a0, 1
	bne	$t4, $a0, move_boxRight
	
	
	move	$a0, $t9
	mul	$a0, $t9, 8		#resets x position
	addi	$a1, $a1, 1		#increments y position
	bne	$t5, $a1, move_boxRight
	

	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra



clear_selectionRight:
		addi	$sp,$sp,-4		# non-leaf, save some stack space
		sw	$ra,0($sp)
		li $a0, 0
		li $a1, 0
		addi $t9, $t9, -1		#get x position of card to the left
		mul	$a0, $t9, 8		#gets x position of card in LEDs
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8		#gets y position of card in LEDs
		addi	$t4, $a0, 8		#gets ending x position in LEDs
		addi	$t5, $a1, 10		#gets ending y position in LEDs

	clear_boxRight:
		li	$a2,0			# $a2 holds box color
		jal 	setLED
		addi	$a0, $a0, 1
		bne	$t4, $a0, clear_boxRight
	
	
		move	$a0, $t9
		mul	$a0, $t9, 8		#resets x position
		addi	$a1, $a1, 1		#increments y position
		bne	$t5, $a1, clear_boxRight
		
	reset_cardRight:
		addi	$t8, $t8, -1
		li 	$a0, 0
		li	$a1, 0
		li 	$a0, 3
		move	$a2,$a0			# copy color to $a2
		
		mul $a0, $t9, 8
		addi $a0, $a0, 1		#gets x position of card in LEDs	
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8
		addi	$a1, $a1, 1		#gets y position of card in LEDs
		addi	$t4, $a0, 6		#gets ending x position in LEDs
		addi	$t5, $a1, 8		#gets ending y position in LEDs
		
	draw_resetRight:	
		li	$a2,3			# $a2 holds box color
		jal 	setLED
		addi	$a0, $a0, 1
		bne	$t4, $a0, draw_resetRight
	
	
		move	$a0, $t9
		mul	$a0, $t9, 8
		addi	$a0, $a0, 1		#resets x position
		addi	$a1, $a1, 1		#increments y position
		bne	$t5, $a1, draw_resetRight

		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
#**************************up button*******************************************

	up_Button:

	addi	$sp,$sp,-4		# non-leaf, save some stack space
	sw	$ra,0($sp)	
				
						
	move_boxUp:
	li	$a2,1			# $a2 holds box color
	jal 	setLED
	addi	$a0, $a0, 1
	bne	$t4, $a0, move_boxUp
	
	move	$a0, $t9
	mul	$a0, $t9, 8		#resets x position
	addi	$a1, $a1, 1		#increments y position
	bne	$t5, $a1, move_boxUp
	

	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra							
										
												
														
																
	clear_selectionDown:
		addi	$sp,$sp,-4		# non-leaf, save some stack space
		sw	$ra,0($sp)
		li $a0, 0
		li $a1, 0
		mul	$a0, $t9, 8		#gets x position of card below in LEDs
		addi	$a1, $a1, -1		#gets y position of card below
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8		#gets y position of card in LEDs
		addi	$t4, $a0, 8		#gets ending x position in LEDs
		addi	$t5, $a1, 10		#gets ending y position in LEDs

	clear_boxDown:
		li	$a2,0			# $a2 holds box color
		jal 	setLED
		addi	$a0, $a0, 1
		bne	$t4, $a0, clear_boxDown
	
	
		move	$a0, $t9
		mul	$a0, $t9, 8		#resets x position
		addi	$a1, $a1, 1		#increments y position
		bne	$t5, $a1, clear_boxDown
		
	reset_cardDown:
		addi	$t8, $t8, -1
		li 	$a0, 0
		li	$a1, 0
		li 	$a0, 3
		move	$a2,$a0			# copy color to $a2
		
		mul $a0, $t9, 8
		addi $a0, $a0, 1		#gets x position of card in LEDs	
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8
		addi	$a1, $a1, 1		#gets y position of card in LEDs
		addi	$t4, $a0, 6		#gets ending x position in LEDs
		addi	$t5, $a1, 8		#gets ending y position in LEDs
		
	draw_resetDown:	
		li	$a2,3			# $a2 holds box color
		jal 	setLED
		addi	$a0, $a0, 1
		bne	$t4, $a0, draw_resetDown
	
	
		move	$a0, $t9
		mul	$a0, $t9, 8
		addi	$a0, $a0, 1		#resets x position
		addi	$a1, $a1, 1		#increments y position
		bne	$t5, $a1, draw_resetDown

		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra																
#***************************down button**************************************

	down_Button:

		addi	$sp,$sp,-4		# non-leaf, save some stack space
		sw	$ra,0($sp)	


	move_boxDown:
		li	$a2,1			# $a2 holds box color
		jal 	setLED
		addi	$a0, $a0, 1
		bne	$t4, $a0, move_boxDown
	
		move	$a0, $t9
		mul	$a0, $t9, 8		#resets x position
		addi	$a1, $a1, 1		#increments y position
		bne	$t5, $a1, move_boxDown
		
		
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
		
				
						
	
	clear_selectionUp:
		addi	$sp,$sp,-4		# non-leaf, save some stack space
		sw	$ra,0($sp)
		li $a0, 0
		li $a1, 0
		mul	$a0, $t9, 8		#gets x position of card above in LEDs
		addi	$a1, $a1, 1		#gets y position of card above
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8		#gets y position of card in LEDs
		addi	$t4, $a0, 8		#gets ending x position in LEDs
		addi	$t5, $a1, 10		#gets ending y position in LEDs

	clear_boxUp:
		li	$a2,0			# $a2 holds box color
		jal 	setLED
		addi	$a0, $a0, 1
		bne	$t4, $a0, clear_boxUp
	
	
		move	$a0, $t9
		mul	$a0, $t9, 8		#resets x position
		addi	$a1, $a1, 1		#increments y position
		bne	$t5, $a1, clear_boxUp
		
	reset_cardUp:
		addi	$t8, $t8, -1
		li 	$a0, 0
		li	$a1, 0
		li 	$a0, 3
		move	$a2,$a0			# copy color to $a2
		
		mul $a0, $t9, 8
		addi $a0, $a0, 1		#gets x position of card in LEDs	
		addi	$a1, $t8, 1		
		mul	$a1, $a1, 8
		addi	$t8, $t8, 1
		add	$a1, $a1, $t8
		addi	$a1, $a1, 1		#gets y position of card in LEDs
		addi	$t4, $a0, 6		#gets ending x position in LEDs
		addi	$t5, $a1, 8		#gets ending y position in LEDs
		
	draw_resetUp:	
		li	$a2,3			# $a2 holds box color
		jal 	setLED
		addi	$a0, $a0, 1
		bne	$t4, $a0, draw_resetUp
	
	
		move	$a0, $t9
		mul	$a0, $t9, 8
		addi	$a0, $a0, 1		#resets x position
		addi	$a1, $a1, 1		#increments y position
		bne	$t5, $a1, draw_resetUp

		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra								
#***************************select button************************************

b_button:
	addi $sp, $sp, -100
	sw $s0, 28($sp)
	sw $s1, 32($sp)
	sw $s2, 36($sp)
	sw $s3, 40($sp)
	sw $s4, 44($sp)
	sw $t0, 48($sp)
	sw $t1, 52($sp)
	sw $ra, 56($sp)
	sw $t2, 60($sp)
	sw $t3, 64($sp)
	sw $t4, 68($sp)
	sw $t5, 72($sp)
	sw $a0, 76($sp)
	sw $a1, 80($sp)
	sw $a2, 84($sp)
	sw $a3, 88($sp)
	sw $t6, 92($sp)
	sw $v1, 96($sp)
	
	
	la $s0, font						#loads address of font array
	la $t4, card_Values
	la $s1, 0xFFFF0008					#loads starting address of of LED memory
	addi $s3, $s0, 14 					#puts offset of last row of LEDs in font into $s3
	
	mul $t1, $t9, 8
	add $t1, $t1, $t8					# i = x * 8 + y
	mul $t1, $t1, 4						#multiply by 4 to get offset for card_Values
	bge $t1, 160, reduceNum
getFont:	
	add $t4, $t4, $t1					#index of value in card_Values array
	lw $t0, 0($t4)						# value assigned to card
	move $t5, $t0
	
	
	# get card number
	mul $t2, $t8, 8
	add $t2, $t2, $t9					#card number = x + (8 * y)
	move $s4, $t5						#copies assigned value to $s4 to use with drawFunction
	mul $s4, $s4, 16					#multiplies by 16 to get font offset
	
	li $a0, 7
	li $a1, 15
	li $a2, 23
	li $a3, 31
	li $t6, 8
	li $v1, 7
	
	bgt $t2, $a3, fifthRow					#checks to see if the card in the 5th row
	bgt $t2, $a2, fourthRow					#checks to see if the card in the 4th row
	bgt $t2, $a1, thirdRow					#checks to see if the card in the 3rd row
	bgt $t2, $a0, secRow					#checks to see if the card in the 2nd row
	bgt $t2, $t6, firstRow					#checks to see if the card in the 1st row
	ble $t2, $v1, initRow					#checks to see if the card in the initial row
drawNum:jal drawFunction


	
	lw $s0, 28($sp)
	lw $s1, 32($sp)
	lw $s2, 36($sp)
	lw $s3, 40($sp)
	lw $s4, 44($sp)
	lw $t0, 48($sp)
	lw $t1, 52($sp)
	lw $ra, 56($sp)
	lw $t2, 60($sp)
	lw $t3, 64($sp)
	lw $t4, 68($sp)
	lw $t5, 72($sp)
	lw $a0, 76($sp)
	lw $a1, 80($sp)
	lw $a2, 84($sp)
	lw $a3, 88($sp)
	lw $t6, 92($sp)
	lw $v1, 96($sp)
	addi $sp, $sp 100
	jr $ra
	
	
	reduceNum:
	addi $t1, $t1, -100
	j getFont
	
	
	initRow:
		li $t3, 160				
		mul $t2, $t2, 2
		add $t3, $t3, $t2
		add $s1, $s1, $t3				#LED index = 160 + (cardNumber *2)
		j drawNum
	
	secRow:
		li $t3, 304
		addi $t2, $t2, -8
		mul $t2, $t2, 2
		add $t3, $t3, $t2
		add $s1, $s1, $t3
		j drawNum					#LED index = 304 + ((cardNumber - 8) *2)
	
	thirdRow:
		li $t3, 448
		addi $t2, $t2, -16
		mul $t2, $t2, 2
		add $t3, $t3, $t2
		add $s1, $s1, $t3				#LED index = 448 + ((cardNumber - 16) *2)
		j drawNum
		
	fourthRow:
		li $t3, 592
		addi $t2, $t2, -24
		mul $t2, $t2, 2
		add $t3, $t3, $t2
		add $s1, $s1, $t3				#LED index = 592 + ((cardNumber - 24) *2)
		j drawNum
				
	fifthRow:									
		li $t3, 736
		addi $t2, $t2, -32
		mul $t2, $t2, 2
		add $t3, $t3, $t2
		add $s1, $s1, $t3				#LED index = 736 + ((cardNumber - 32) *2)
		j drawNum
	
	firstRow:
		li $t3, 160
		mul $t2, $t2, 2
		add $t3, $t3, $t2
		add $s1, $s1, $t3				#in the event card number = 8
		j drawNum
