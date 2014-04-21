.text

main:
#	add $r24, $r0, $r0 # $r24= x = 0
#	add $r25, $r0, $r0 # $r25 = y = 0
#	addi $r28, $r0, 0 # $r28 = memaddress = 0 = start of background image.
##	addi $r23, $r0, 160 #width
#	addi $r22, $r0, 19200 #size
	addi $r21, $r0, 143 #global width

	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
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
	j load_tile_color_init
	

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
	j main


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
	bne $r24, $r21, load_tile_color_init ## not end of table else go up another row.
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
	bne $r25, $r30, load_tile_color_init 
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop. 
	j load_image_complete

load_tile_color_init:
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	add $r0, $r0, $r0 #nop.
	lw $r27, 4001($r0) #$r27 get the tile color
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


load_image_complete:
	j main


.data