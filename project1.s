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

next:
	add $t0, $t0, 1
	lb $s0, ($t0)
	jump loop

number:
	bgt $s0, 57, next


uppercase:
	bgt $s0, 81, next		# M = 17 so valid uppercases are A - Q and the ASCII for Q is 81
	