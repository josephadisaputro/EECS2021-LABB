# DONE BY YUSUF ADISAPUTRo
# STUDENT NUMBER 213533088
# WHAT IT DOES? IT ACCEPTS 2 INPUTS AND SUBTRACT THEM, BUT THE SUBTRACTION WILL ALWAYS BE POSITIVE

	 .text         
main:    #---------------------   
	 addi     $v0, $0, 5    # ACCEPT FIRST INPUT    
         syscall         
         add      $t0, $0, $v0  
	 #---------------------   
	 addi     $v0, $0, 5    # ACCEPT SECOND INPUT    
         syscall         
         add      $t1, $0, $v0 
	 #---------------------
	 addi	  $t8, $0, 1
	 slt	  $t9, $t1, $t0	# COMPARE THE TWO INPUTS, T1 < T0, THEN;
	 beq	  $t9, $t8, then
	 j	  else

then:	 sub	  $t3, $t0, $t1 
	 j 	  fini
else: 	 sub	  $t3, $t1, $t0
	
fini: 	 addi     $v0, $0, 1        # service 1
         add      $a0, $0, $t3      # printInt 
         syscall                    # do print  	 
	 #---------------------         
         jr       $ra  
