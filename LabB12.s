         .text         
main:    #---------------------    
         addi     $t0, $0, 60 	


 	 sll      $t8, $t0, 4 	   # multiply by 16
	 sll      $t9, $t0, 1
	 add	  $t7, $t8, $t9

         addi     $v0, $0, 1        # service #1 
         add      $a0, $0, $t7      # printInt 
         syscall                    # do print         
	 #---------------------         
         jr       $ra   
