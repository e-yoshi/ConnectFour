.text
# ECE350 Connect Four
# Written in Duke ECE350 Assembly


main:

addi $r1, $r0, 1
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
jal billy
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
blt $r0, $r1, billy
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0


billy:
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
jr $r31
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0




.data