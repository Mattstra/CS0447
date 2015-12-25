.data
y: .byte 37
z: .byte 0
x: .byte 13


.text
la $t0, y
lb $t1, 0($t0)		#loads y

la $t2, x
lb $t3, 2($t0)		#loads x

la $t4, z		#loads z
sub $t5, $t1, $t3	# 37 - 13 = 24
sb $t5, z		#stores 24 in address of z


lb $t1, 0($t4)		# z overwrites y
sb $t1, 0($t0)

lb $t3, 0($t4)		# z overwrites x
sb $t3, 2($t0)



li $v0, 10		#terminate
syscall
