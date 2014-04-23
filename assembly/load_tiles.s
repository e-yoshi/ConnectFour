.text
# ECE350 Connect Four
# Written in Duke ECE350 Assembly


# Register Convention
# $r1 is a return register
# $r4 is our temporary register that stores 4000
# $r6 is PS2 INPUT
# $r9 is current player. 1 is player 1, 2 is player 2
# $r10 will be input
# $r11 will be a delay register
# $r14 is a temporary register that holds 4000 + input offset for load store RESULTS into Table Maps
# $r15 is Win? If 1, game over. if 0, keep playing
# $r16 is always the value 1. comes in handy.
# r2, r5, r7, r8, r12, r13, r17, 18, 19 are temp registers



# Table Mapping
# Table Map at 4000 is our map. 4001-->4042,
# 0 if nobody, 1 if player 1, 2 if player 2 at said memory location


## DEBUGGING ##
#addi $r0, $r0, 0
#addi $r0, $r0, 0
#addi $r0, $r0, 0
#addi $r0, $r0, 0
#sw $r16, 4021($r0)
#jal printScreen
#addi $r0, $r0, 0
#addi $r0, $r0, 0
#addi $r0, $r0, 0
#addi $r0, $r0, 0
## DEBUGGING ##

# All 
main:

addi $r4, $r0, 4000
addi $r6, $r0, 0
addi $r9, $r0, 1   # currPlayer is 1
addi $r10, $r0, 0 # initialize inputVar to 0
addi $r15, $r0, 0 # init gameOver to 0. 1 is game over
addi $r16, $r0, 1  # $r16 is always value 1. comes in handy.

###############################################################################################
###############################################################################################
gameLoop:

## DEBUGGING ##
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
sw $r9, 4042($r0)
jal printScreen
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
## DEBUGGING ##

	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	j readInput # now input var should be in register 10	
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
retMain0:
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
placeLoop: # loop for placing a block
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	# test if current block is occupied, if occupied, return 1, or 2. if no, return 0 in $r1
	lw $r1, 4000($r10)		# either a 0,1,or 2
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	blt $r1, $r16, skipIncrement
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0

		addi $r10, $r10, 7 # increment input
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		j placeLoop		   # loop back, check if next block above this one is free
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0

skipIncrement:
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		j placeBlock
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
retMain2:
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# checkWin(User) -- pass in User as arg, returns 1 if user has won.
			# after winning, maybe all blocks blink or something. 
		# set pass-in vars to checkWin
			# $r9 --> currPlayer
		j checkWin
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0


retMain3:
## DEBUGGING ##
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
sw $r15, 4039($r0)
jal printScreen
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
## DEBUGGING ##

## DEBUGGING ##
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
sw $r16, 4013($r0)
jal printScreen
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
## DEBUGGING ##


		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# if won, $r15 will be 1 or 2. if game NOT over, $r15 is 0
		bne $r0, $r15, endGame	# if not 0, branch to endGame. $r15 is 1 or 2, so game is over!
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# game NOT over if we reached this. Change currPlayer
		j changePlayer
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0


retMain4:

## DEBUGGING ##
addi $r11, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
sw $r16, 4028($r0)
jal printScreen
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
## DEBUGGING ##

		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# keep playing the game
		j gameLoop
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0

# DONE WITH MAIN GAME LOOP. ####################################################################
###############################################################################################


###############################################################################################
###############################################################################################
#							SUB METHODS
###############################################################################################
###############################################################################################
# Read Input from the current player, set to 1 through 7
readInput:
	addi $r10, $r0, 0
fixEnter:
	addi $r8, $r0, 90
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	sub $r17, $r6, $r8
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	blt $r17, $r0, fixedEnter
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	j fixEnter
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
fixedEnter:
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
readInput0:
	# $r6 will be input FROM PS2
	# put result into $r10
	# reset $r6 
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	blt $r6, $r16, readInput0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	# Only reach this if r6 is NOT 0 --> has a value!
	lw $r10, 2048($r6)
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0

enterPress:
	# now we test if enter has been pressed
	# if NOT equal to 5A (enter), loop back
	addi $r12, $r0, 90
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	bne $r12, $r6, enterPress
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	j retMain0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0

# place a block at given input from $r10. RESET input after placeBlock is called to 100
placeBlock:
	#WRITE TO ORIGINAL TABLE MAP our player 1 or 2
	# we just previously called testOccupied, so $r4 should still be holding destination address
	# $r9 is holding currPlayer
	sw $r9, 4000($r10)	# stores 1 if currPlayer 1, 2 if currPlayer 2
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	jal printScreen
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	j retMain2
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0


# check if game over
checkWin:
# 19,  are free temps
# r2, 3, 5, 7, 8, 12, 13, 17, 18, 19 are temps
addi $r5, $r0, 1   #r5 is loop, goes from 1 to 21 for vertical checks, on 22 exit.
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
addi $r7, $r0, 21
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
addi $r15, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	addi $r0, $r0, 0
	#	First vertical (loops are inclusive at both ends in this pseudo-code):
	#	for row = 0 to 2:
	#    	for col = 0 to 6:
	#        	if board[row][col] != 0 and
	#           	board[row][col] == board[row+1][col] and
	#           	board[row][col] == board[row+2][col] and
	#           	board[row][col] == board[row+3][col]:
	#              return board[row][col]
	# This limits the possibilities to only those that don't extend off the edge of the board, 
	# a problem most solutions have when they simplistically start by checking each cell and going 
	# out in all directions from there. By that, I mean there's no point checking a start row of 3, 
	# simply because that would involve rows 3, 4, 5 and 6 (the latter which does not exist).
	# --> translated to one dimensional loop from 1 to 21. this is the same as the two for loops above
#	just done in one dimension by going from index 1 to index 21
checkWinLoop0: 
		addi $r19, $r5, 4000	# run1: r5=1, r19=4001, run2: r5=2, r19 = 4002, ...
			addi $r0, $r0, 0
			addi $r0, $r0, 0
			addi $r0, $r0, 0
			addi $r0, $r0, 0
		lw $r12, 0($r19)	#load i
		lw $r13, 7($r19)	#load i	#load i+7
		lw $r17, 14($r19)	#load i	#load i+14
		lw $r18, 21($r19)	#load i	#load i+21
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3
		# increment vertical loop
		addi $r5, $r5, 1
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		blt $r7, $r5, endCheckWinLoop0 # if 21 < 22, just did 21 iterations, exit
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		j checkWinLoop0 #not done. loop back
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
endCheckWinLoop0:
	# reset temp vars
	addi $r5, $r0, 1   #r5 is loop, goes from 1 to 21 for horizontal checks, on 36, exit.
	addi $r7, $r0, 36	

	#Similarly, for horizontal:
	#for row = 0 to 5:
	#    for col = 0 to 3:
	#        if board[row][col] != 0 and
	#           board[row][col] == board[row][col+1] and
	#           board[row][col] == board[row][col+2] and
	#           board[row][col] == board[row][col+3]:
	#               return board[row][col]

	# in assembly, check 	1,2,3,4, 
	#						8,9,10,11
	#						15,16,17,18,
	#						22,23,24,25,
	#						29,30,31,32,
	#						36,37,38,39

	#IDEA: Check inner FOUR iterations in an unrolled loop. Then increment by 7 again.
checkWinLoop1:
		addi $r19, $r5, 4000	# run1: r5=1, r19=4001
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		lw $r12, 0($r19)	#load i
		lw $r13, 1($r19)	#load i	#load i+1
		lw $r17, 2($r19)	#load i	#load i+2
		lw $r18, 3($r19)	#load i	#load i+3
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 1($r19)	#load i+1
		lw $r13, 2($r19)	#load i	#load i+2
		lw $r17, 3($r19)	#load i	#load i+3
		lw $r18, 4($r19)	#load i	#load i+4
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 2($r19)	#load i+2
		lw $r13, 3($r19)	#load i	#load i+3
		lw $r17, 4($r19)	#load i	#load i+4
		lw $r18, 5($r19)	#load i	#load i+5
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 3($r19)	#load i+3
		lw $r13, 4($r19)	#load i	#load i+4
		lw $r17, 5($r19)	#load i	#load i+5
		lw $r18, 6($r19)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		#place in r15, or r15 with others, keep going
		or $r15, $r15, $r3
		# increment horizontal loop
		addi $r5, $r5, 7
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		blt $r7, $r5, endCheckWinLoop1 # if 36 (r7) < 43 (r5), just did all iterations, exit
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		j checkWinLoop1 #not done. loop back
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0

endCheckWinLoop1: 
	#For right and up, followed by right and down:

	#for row = 3 to 5:
	#    for col = 0 to 3:
	#        if board[row][col] != 0 and
	#           board[row][col] == board[row-1][col+1] and
	#           board[row][col] == board[row-2][col+2] and
	#           board[row][col] == board[row-3][col+3]:
	#               return board[row][col]
	# UNROLLING: only 12 cases to test, can do without looping!
		lw $r12, 15($r4)	#load i+3
		lw $r13, 23($r4)	#load i	#load i+4
		lw $r17, 31($r4)	#load i	#load i+5
		lw $r18, 39($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 8($r4)	#load i+3
		lw $r13, 16($r4)	#load i	#load i+4
		lw $r17, 24($r4)	#load i	#load i+5
		lw $r18, 32($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 16($r4)	#load i+3
		lw $r13, 24($r4)	#load i	#load i+4
		lw $r17, 32($r4)	#load i	#load i+5
		lw $r18, 40($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 1($r4)	#load i+3
		lw $r13, 9($r4)	#load i	#load i+4
		lw $r17, 17($r4)	#load i	#load i+5
		lw $r18, 25($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 9($r4)	#load i+3
		lw $r13, 17($r4)	#load i	#load i+4
		lw $r17, 25($r4)	#load i	#load i+5
		lw $r18, 33($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 17($r4)	#load i+3
		lw $r13, 25($r4)	#load i	#load i+4
		lw $r17, 33($r4)	#load i	#load i+5
		lw $r18, 41($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		#place in r15, or r15 with others, keep going
		or $r15, $r15, $r3

		lw $r12, 2($r4)	#load i+3
		lw $r13, 10($r4)	#load i	#load i+4
		lw $r17, 18($r4)	#load i	#load i+5
		lw $r18, 26($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		#place in r15, or r15 with others, keep going
		or $r15, $r15, $r3

		lw $r12, 10($r4)	#load i+3
		lw $r13, 18($r4)	#load i	#load i+4
		lw $r17, 26($r4)	#load i	#load i+5
		lw $r18, 34($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 18($r4)	#load i+3
		lw $r13, 26($r4)	#load i	#load i+4
		lw $r17, 34($r4)	#load i	#load i+5
		lw $r18, 42($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		#place in r15, or r15 with others, keep going
		or $r15, $r15, $r3

		lw $r12, 3($r4)	#load i+3
		lw $r13, 11($r4)	#load i	#load i+4
		lw $r17, 19($r4)	#load i	#load i+5
		lw $r18, 27($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		#place in r15, or r15 with others, keep going
		or $r15, $r15, $r3

		lw $r12, 11($r4)	#load i+3
		lw $r13, 19($r4)	#load i	#load i+4
		lw $r17, 27($r4)	#load i	#load i+5
		lw $r18, 35($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 4($r4)	#load i+3
		lw $r13, 12($r4)	#load i	#load i+4
		lw $r17, 20($r4)	#load i	#load i+5
		lw $r18, 28($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

	#for row = 0 to 2:
	#    for col = 0 to 3:
	#        if board[row][col] != 0 and
	#           board[row][col] == board[row+1][col+1] and
	#           board[row][col] == board[row+2][col+2] and
	#           board[row][col] == board[row+3][col+3]:
	#               return board[row][col]

	# UNROLLING: only 12 cases to test, can do without looping!
		lw $r12, 22($r4)	#load i+3
		lw $r13, 16($r4)	#load i	#load i+4
		lw $r17, 10($r4)	#load i	#load i+5
		lw $r18, 4($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 29($r4)	#load i+3
		lw $r13, 23($r4)	#load i	#load i+4
		lw $r17, 17($r4)	#load i	#load i+5
		lw $r18, 11($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		#place in r15, or r15 with others, keep going
		or $r15, $r15, $r3

		lw $r12, 23($r4)	#load i+3
		lw $r13, 17($r4)	#load i	#load i+4
		lw $r17, 11($r4)	#load i	#load i+5
		lw $r18, 5($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 36($r4)	#load i+3
		lw $r13, 30($r4)	#load i	#load i+4
		lw $r17, 24($r4)	#load i	#load i+5
		lw $r18, 18($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 30($r4)	#load i+3
		lw $r13, 24($r4)	#load i	#load i+4
		lw $r17, 18($r4)	#load i	#load i+5
		lw $r18, 12($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 24($r4)	#load i+3
		lw $r13, 18($r4)	#load i	#load i+4
		lw $r17, 12($r4)	#load i	#load i+5
		lw $r18, 6($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 37($r4)	#load i+3
		lw $r13, 31($r4)	#load i	#load i+4
		lw $r17, 25($r4)	#load i	#load i+5
		lw $r18, 19($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 31($r4)	#load i+3
		lw $r13, 25($r4)	#load i	#load i+4
		lw $r17, 19($r4)	#load i	#load i+5
		lw $r18, 13($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 25($r4)	#load i+3
		lw $r13, 19($r4)	#load i	#load i+4
		lw $r17, 13($r4)	#load i	#load i+5
		lw $r18, 7($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 38($r4)	#load i+3
		lw $r13, 32($r4)	#load i	#load i+4
		lw $r17, 26($r4)	#load i	#load i+5
		lw $r18, 20($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0

		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 32($r4)	#load i+3
		lw $r13, 26($r4)	#load i	#load i+4
		lw $r17, 20($r4)	#load i	#load i+5
		lw $r18, 14($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

		lw $r12, 39($r4)	#load i+3
		lw $r13, 33($r4)	#load i	#load i+4
		lw $r17, 27($r4)	#load i	#load i+5
		lw $r18, 21($r4)	#load i	#load i+6
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# check if all match either player 1 or all player 2
		and $r2, $r12, $r13		# check if index 1, 2 are same player
		and $r8, $r17, $r18		# check if index 3,4 are same player
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		and $r3, $r2, $r8     	# check if res0, res1 are same player
		#place in r15, or r15 with others, keep going
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		or $r15, $r15, $r3

## DEBUGGING ##
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
sw $r16, 4035($r0)
jal printScreen
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
## DEBUGGING ##



		# if 0 is less than the result, the result is greater than 0
		# if the result is greater than 0, it's either 1, or 2. 
		# --> WINNER! 
		# otherwise, no winner.
		# ALREADY WRITTEN IN MAIN BODY! if not 0 in r15, game won!
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		j retMain3	# return
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0

#change CurrPlayer
changePlayer:
	addi $r7, $r0, 60000
	#if (Current Player == A) 
		#change Current Player to B
	#if (Current Player == B) 
		#change Current Player to A 
	# test if currPlayer is NOT 1, i.e., player is 2. change player to 1.
		# $r16 is always the value 1. comes in handy.
	bne $r16, $r9, changePlayerSubLabel
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		# did NOT branch here. that means current player is 1


## DEBUGGING ##
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
sw $r0, 4036($r0)
sw $r16, 4037($r0)
jal printScreen
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
## DEBUGGING ##


		addi $r9, $r0, 2
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0

wait0:
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r11, $r11, 1
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		blt $r7, $r11, retMain4
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		j wait0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0

changePlayerSubLabel: 	#we just branched here because player is NOT equal to 1... player is 2. change player to 1,return
## DEBUGGING ##
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
sw $r16, 4036($r0)
sw $r17, 4037($r0)
jal printScreen
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
## DEBUGGING ##
		addi $r9, $r0, 1
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
wait1:
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r11, $r11, 1
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		blt $r7, $r11, retMain4
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		j wait1
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0
		addi $r0, $r0, 0

#MAIN: Initialize parameters
# Description of parameters and registers
# r19 -> Current tile number. Goes from 1 to 42.
# r20 -> Width in pixels of the dmem mapped tile. 18px
# r21 -> Right edge of table x position. 143 pixels
# r22 -> Total image size of a tile. 324 pixels
# r23 -> Line break x value. x_break = x_corner + 18
# r24 -> X coordinate
# r25 -> Y coordinate
# r26 -> Color array of 32bits
# r27 -> Color. 3 bits. 
# r28 -> Memory address from which the color array is read
# 9 -> Counter for the number of pixels of the tile that were displayed.
# r30 -> Bitmask for the color value.

printScreen:
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	addi $r21, $r0, 143 #table edge
	addi $r20, $r0, 18 #width
	add $r29, $r0, $r0 # $r29 = pixel count = 0
	addi $r22, $r0, 324 #size
	addi $r24, $r0, 17 #x=17
	addi $r25, $r0, 96 #y=96
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r23, $r24, $r20 #stopping x = x_initial + width
	addi $r19, $r0, 4001 #current tile address.
	j load_tile_color

load_tile_coordinates:
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r24, $r24, $r20 #Right 18
	sub $r25, $r25, $r20 #Up 18
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r23, $r24, $r20 #stopping x = x_initial + width
	add $r0, $r0, $r0 #nop before branch.
	add $r0, $r0, $r0 #nop before branch.
	add $r0, $r0, $r0 #nop before branch.
	add $r0, $r0, $r0 #nop before branch.
	bne $r24, $r21, load_tile_color ## not end of table else go up another row.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	addi $r24, $r0, 17 #x=17 go back with x = 17 New line
	sub $r25, $r25, $r20 #Up 18
	add $r23, $r24, $r20 #stopping x = x_initial + width
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	addi $r30, $r0, 6
	add $r0, $r0, $r0 #nop before branch.
	add $r0, $r0, $r0 #nop before branch.
	add $r0, $r0, $r0 #nop before branch.
	add $r0, $r0, $r0 #nop before branch.
	sub $r30, $r30, $r20 #6-18
	add $r0, $r0, $r0 #nop before branch.
	add $r0, $r0, $r0 #nop before branch.
	add $r0, $r0, $r0 #nop before branch.
	add $r0, $r0, $r0 #nop before branch.
	bne $r25, $r30, load_tile_color 
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop. 
	j load_image_complete

load_tile_color:
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	lw $r27, 0($r19) #$r27 get the tile color
	addi $r19, $r19, 1 #current tile++
	addi $r30, $r0, 1 #r30=1 
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	bne $r27, $r0, load_tile_color_blueorred #not equal to 0 else equal to 0
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	addi $r28, $r0, 3010 # $r28 = memaddress = 3010 - white
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	j load_image_1 #load tile 1

load_tile_color_blueorred:
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	bne $r27, $r30, load_tile_color_red #branch if red continue if blue.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	addi $r28, $r0, 1920 # $r28 = memaddress = 1920 - blue
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	j load_image_1 #load tile 1
	
load_tile_color_red:
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	addi $r28, $r0, 1953 # $r28 = memaddress = 1953 - red
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	j load_image_1 #load tile 1

load_image_1:
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	lw $r30, 3000($r0)  # load mask 0
	lw $r26, 0($r28) #load color_32
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	and $r27, $r26, $r30 # r27 = color 3bit
	sra $r27, $r27, 0 #shift 0
	lw $r30, 3001($r0)   # load mask 1 beforehand
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	custr1 $r27, $r24, $r25 #output to screen
	addi $r24, $r24, 1 # x++ 24
	addi $r29, $r29, 1 #pixcount++ 25
	add $r0, $r0, $r0 #nop. 26
	add $r0, $r0, $r0 #nop. 27
	add $r0, $r0, $r0 #nop. 28
	add $r0, $r0, $r0 #nop. 28
	bne  $r24, $r23, load_image_2 #x!=width=160   else... 29
	add $r0, $r0, $r0 #nop. 30
	add $r0, $r0, $r0 #nop.31
	add $r0, $r0, $r0 #nop.32
	add $r0, $r0, $r0 #nop.33
	sub $r24, $r24, $r20 # Go back to x_initial by subtracting the width from the current position
	addi $r25, $r25, 1 # y++35

load_image_2:
	and $r27, $r26, $r30 # r27 = color 3bit 36
	sra $r27, $r27, 3  #shift 3
	lw $r30, 3002($r0)   # load mask 2 beforehand
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	custr1 $r27, $r24, $r25 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	bne  $r24, $r23, load_image_3 #x!=width=160   else...
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	sub $r24, $r24, $r20 # Go back to x_initial by subtracting the width from the current position
	addi $r25, $r25, 1 # y++

load_image_3:
	and $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 6  #shift 6
	lw $r30, 3003($r0)   # load mask 3 beforehand
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	custr1 $r27, $r24, $r25 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	bne  $r24, $r23, load_image_4 #x!=width=160   else...
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	sub $r24, $r24, $r20 # Go back to x_initial by subtracting the width from the current position
	addi $r25, $r25, 1 # y++

load_image_4:
	and $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 9  #shift 9
	lw $r30, 3004($r0)   # load mask 4 beforehand
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	custr1 $r27, $r24, $r25 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	bne  $r24, $r23, load_image_5 #x!=width=160   else...
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	sub $r24, $r24, $r20 # Go back to x_initial by subtracting the width from the current position
	addi $r25, $r25, 1 # y++

load_image_end_1:
	bne  $r29, $r22, load_image_5 #end, pixel_count!=image size? repeat; else->end
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r29, $r0, $r0 #reset counter.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	j load_tile_coordinates #goto next tile.

load_image_5:
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	and $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 12  #shift 12
	lw $r30, 3005($r0)   # load mask 5 beforehand
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	custr1 $r27, $r24, $r25 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	bne  $r24, $r23, load_image_6 #x!=width=160   else...
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	sub $r24, $r24, $r20 # Go back to x_initial by subtracting the width from the current position
	addi $r25, $r25, 1 # y++

load_image_6:
	and $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 15  #shift 15
	lw $r30, 3006($r0)   # load mask 6 beforehand
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	custr1 $r27, $r24, $r25 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	bne  $r24, $r23, load_image_7 #x!=width=160   else...
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	sub $r24, $r24, $r20 # Go back to x_initial by subtracting the width from the current position
	addi $r25, $r25, 1 # y++

load_image_7:
	and $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 18  #shift 18
	lw $r30, 3007($r0)   # load mask 7 beforehand
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	custr1 $r27, $r24, $r25 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	bne  $r24, $r23, load_image_8 #x!=width=160   else...
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	sub $r24, $r24, $r20 # Go back to x_initial by subtracting the width from the current position
	addi $r25, $r25, 1 # y++

load_image_8:
	and $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 21  #shift 21
	lw $r30, 3008($r0)   # load mask 8 beforehand
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	custr1 $r27, $r24, $r25 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	bne  $r24, $r23, load_image_9 #x!=width=160   else...
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	sub $r24, $r24, $r20 # Go back to x_initial by subtracting the width from the current position
	addi $r25, $r25, 1 # y++

load_image_9:
	and $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 24  #shift 24
	lw $r30, 3009($r0)   # load mask 9 beforehand
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	custr1 $r27, $r24, $r25 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	bne  $r24, $r23, load_image_10 #x!=width=160   else...
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	sub $r24, $r24, $r20 # Go back to x_initial by subtracting the width from the current position
	addi $r25, $r25, 1 # y++

load_image_10:
	and $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 27  #shift 27
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	custr1 $r27, $r24, $r25 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	addi $r28, $r28, 1 # $r28 = memaddress ++
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	bne  $r24, $r23, load_image_end_2 #x!=width=160   else...
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	sub $r24, $r24, $r20 # Go back to x_initial by subtracting the width from the current position
	addi $r25, $r25, 1 # y++

load_image_end_2:
	bne  $r29, $r22, load_image_1 #end, pixel_count!=image size? repeat; else->end
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r29, $r0, $r0 #reset counter.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	j printScreen

load_image_complete:
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	jr $r31
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.






# game is over! 
endGame: 
	
## DEBUGGING ##
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
sw $r16, 4006($r0)
jal printScreen
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
## DEBUGGING ##

j endGame
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
addi $r0, $r0, 0
###############################################################################################
###############################################################################################













.data