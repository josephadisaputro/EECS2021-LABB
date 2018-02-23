         .globl         fini         
         .text         
main:    #---------------------    
         addi     $t0, $0, 60       # t0 = 60 // also the same with //  # li $t0, 60 # t0 = 60 
         addi     $t1, $0, 7        # t1 = 7 
         add      $t2, $t0, $t1     # t2 = t0+t1 
         #---------------------         
         addi     $v0, $0, 11        # service 1 for integer and 11 for char 
         add      $a0, $0, $t2      # printInt 
         syscall                    # do print 
         #---------------------         
fini: 	 jr 	  $ra 		    # return 
