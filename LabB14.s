         .text         
main:    #---------------------    
         addi     $t0, $0, 6000
	 andi	  $t8, $t0, 0x400
	
         addi     $v0, $0, 1        # service #1 
         add      $a0, $0, $t8      # printInt 
         syscall                    # do print  	 
	 #---------------------         
         jr       $ra  
