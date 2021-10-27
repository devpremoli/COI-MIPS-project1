.data

input: .space 11



.text

main:
	li $v0, 8
	li $a0, input
	li $a1, 11
	syscall

	move $t0, $a0

character:
	lb $s0, ($t0)


loop:
	beq $t1, 10, labela


checker:
	bge $s0, 48, number
	bge $s0, 65, uppercase
	bge $s0, 97, lowecase

next:
	add $t0, $t0, 1
	lb $s0, ($t0)
	j loop

number:
	bgt $s0, 57, next
	sub $s0, $s0, 48
	add $s1, $s1, $s0
	j loop


uppercase:
	bgt $s0, 81, next
	sub $s0, $s0, 55
	add $s1, $s1, $s0
	j loop		# M = 17 so valid uppercases are A - Q and the ASCII for Q is 81
	

lowecase:
	bgt $s0, 113, next
	