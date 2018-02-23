         .globl         fini         
         .text         
main:    #---------------------    
         addi     $v0, $0, 5        # v0 = readInt # service 5 for read input integer
         syscall         
         add      $t0, $0, $v0         
	 #--------------------- 
	 addi     $t1, $0, 7        # t1 = 7
	 #---------------------
	 beq	  $t0, $t1, xx
	 j 	  yy
	 #--------------------- 


xx:      add      $t2, $t0, $t1     # t2 = t0+t1 
         j	  fini
	 #---------------------         
yy:	 sub 	  $t2, $t0, $t1 

fini:	 addi     $v0, $0, 1        # service #1 
         add      $a0, $0, $t2      # printInt 
         syscall                    # do print 
 	 jr 	  $ra 		    # return 


#	beq (branch-on-equal) is used to translate ==
#	bne(branch-on-not-equal) is used to translate !=
