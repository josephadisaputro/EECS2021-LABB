         .text         
main:    #---------------------    
         addi     $t0, $0, 60 
         addi     $t1, $0, 7 
         div      $t0, $t1   
         mflo     $t2
 	 #---------------------  
	 mult     $t0, $t1   
         mflo     $t3
	 mflo	  $t4
	 #---------------------
	 #addi     $v0, $0, 1        # service #1 
         #add      $a0, $0, $t2      # printInt 
         #syscall                    # do print 
	 #---------------------
	 #---------------------
	 addi     $v0, $0, 1        # service #1 
         add      $a0, $0, $t3      # printInt 
         syscall                    # do print
 	 #---------------------
	 addi     $v0, $0, 11       # service #1 
         add      $a0, $0, ' '      # printInt 
         syscall                    # do print 
	 #---------------------
	 addi     $v0, $0, 1        # service #1 
         add      $a0, $0, $t4      # printInt 
         syscall                    # do print  	 
	 jr 	  $ra 		    # return 	
