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


checker:
	beq $t1, 10, labela
	