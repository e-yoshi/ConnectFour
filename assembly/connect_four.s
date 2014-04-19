.text



load_background_init:
	add $r24, $r0, $r0 # $r24= x = 0
	add $r25, $r0, $r0 # $r25 = y = 0
	addi $r28, $r0, 2000 # $r28 = memaddress = 2000
	add $r29, $r0, $r0 # $r29 = pixel count = 0
	addi $r23, $r0, 160 #width
	addi $r22, $r0, 22800 #size

load_image_1:
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	lw $r30, 3000($r0)  # load mask 0
	lw $r26, 0($r28) #load color_32
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	or $r27, $r26, $r30 # r27 = color 3bit
	sra $r27, $r27, 0 #shift 0
	lw $r30, 3001($r0)   # load mask 1 beforehand
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	custr1 $r24, $r25, $r27 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	bne  $r24, $r23, load_image_2 #x!=width=160   else...
	add $r24, $r0, $r0 # $r24= x = 0
	addi $r25, $r25, 1 # y++

load_image_2:
	or $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 3  #shift 3
	lw $r30, 3002($r0)   # load mask 2 beforehand
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	custr1 $r24, $r25, $r27 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	bne  $r24, $r23, load_image_3 #x!=width=160   else...
	add $r24, $r0, $r0 # $r24= x = 0
	addi $r25, $r25, 1 # y++


load_image_3:
	or $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 6  #shift 6
	lw $r30, 3003($r0)   # load mask 3 beforehand
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	custr1 $r24, $r25, $r27 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	bne  $r24, $r23, load_image_6 #x!=width=160   else...
	add $r24, $r0, $r0 # $r24= x = 0
	addi $r25, $r25, 1 # y++

load_image_4:
	or $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 9  #shift 9
	lw $r30, 3004($r0)   # load mask 4 beforehand
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	custr1 $r24, $r25, $r27 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	bne  $r24, $r23, load_image_5 #x!=width=160   else...
	add $r24, $r0, $r0 # $r24= x = 0
	addi $r25, $r25, 1 # y++


load_image_5:
	or $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 12  #shift 12
	lw $r30, 3005($r0)   # load mask 5 beforehand
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	custr1 $r24, $r25, $r27 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	bne  $r24, $r23, load_image_6 #x!=width=160   else...
	add $r24, $r0, $r0 # $r24= x = 0
	addi $r25, $r25, 1 # y++

load_image_6:
	or $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 15  #shift 15
	lw $r30, 3006($r0)   # load mask 6 beforehand
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	custr1 $r24, $r25, $r27 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	bne  $r24, $r23, load_image_7 #x!=width=160   else...
	add $r24, $r0, $r0 # $r24= x = 0
	addi $r25, $r25, 1 # y++

load_image_7:
	or $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 18  #shift 18
	lw $r30, 3007($r0)   # load mask 7 beforehand
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	custr1 $r24, $r25, $r27 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	bne  $r24, $r23, load_image_8 #x!=width=160   else...
	add $r24, $r0, $r0 # $r24= x = 0
	addi $r25, $r25, 1 # y++

load_image_8:
	or $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 21  #shift 21
	lw $r30, 3008($r0)   # load mask 8 beforehand
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	custr1 $r24, $r25, $r27 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	bne  $r24, $r23, load_image_9 #x!=width=160   else...
	add $r24, $r0, $r0 # $r24= x = 0
	addi $r25, $r25, 1 # y++


load_image_9:
	or $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 24  #shift 24
	lw $r30, 3009($r0)   # load mask 9 beforehand
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	custr1 $r24, $r25, $r27 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	bne  $r24, $r23, load_image_10 #x!=width=160   else...
	add $r24, $r0, $r0 # $r24= x = 0
	addi $r25, $r25, 1 # y++


load_image_10:
	or $r27, $r26, $r30 # r27 = color 3bit 
	sra $r27, $r27, 27  #shift 27
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	custr1 $r24, $r25, $r27 #output to screen
	addi $r24, $r24, 1 # x++
	addi $r29, $r29, 1 #pixcount++
	addi $r28, $r28, 1 # $r28 = memaddress ++
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	add $r0, $r0, $r0 #nop before output.
	bne  $r24, $r23, load_image_11 #x!=width=160   else...
	add $r24, $r0, $r0 # $r24= x = 0
	addi $r25, $r25, 1 # y++

load_image_11:
	bne  $r29, $r22, load_image_1

load_tile_init:
	add $r0, $r0, $r0




.data