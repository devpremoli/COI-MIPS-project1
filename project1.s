.data

input: .space 11



.text

main:
	li $v0, 8
	li $a0, input
	li $a1, 11
	syscall
	