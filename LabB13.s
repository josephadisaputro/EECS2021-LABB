         .text         
main:    #---------------------    
         addi     $t0, $0, 5000
	 sll      $t8, $t0, 21 	   
	 srl	  $t8, $t8, 31
	
         addi     $v0, $0, 1        # service #1 
         add      $a0, $0, $t8      # printInt 
         syscall                    # do print  	 
	 #---------------------         
         jr       $ra  
