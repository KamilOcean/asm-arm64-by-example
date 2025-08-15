.text
.global _start
.align 2

_start:
	mov X0, #1								// stdout
	adrp X1, helloworld@PAGE
	add X1, X1, helloworld@PAGEOFF
	mov X2, #12								// length of "Hello World" string
	mov X16, #4								// write to stdout
	svc #0x80

	# exit
	mov X16, #1
	svc #0x80

.data
helloworld: .ascii "Hello, World!\n"
