         .text         
main:    #---------------------    
         addi     $t0, $0, 6000
	 ori	  $t5, $0, 0xffff
	 sll	  $t5, $t5, 16
	 ori	  $t5, $t5, 0xfbff
	 and	  $t6, $t0, $t5
         addi     $v0, $0, 1        # service #1 
         add      $a0, $0, $t6      # printInt 
         syscall                    # do print  	 
	 #---------------------         
         jr       $ra  
