         .globl         fini         
         .text         
main:    #---------------------    
         addi     $t0, $0, 60       # t0 = 60 // also the same with //  # li $t0, 60 # t0 = 60 
         addi     $t1, $0, 7        # t1 = 7 
         add      $t2, $t0, $t1     # t2 = t0+t1 
         #---------------------         
	 sub 	  $t3, $t0, $t1 
	 #---------------------  
         addi     $v0, $0, 1        # prints the sum of t0 and t1 
         add      $a0, $0, $t2      
         syscall                     
	 addi     $v0, $0, 11       # prints space 
         add      $a0, $0, ' '      
         syscall
	 addi     $v0, $0, 1        # prints the difference or the subtraction of t0 and t1 
         add      $a0, $0, $t3      
         syscall
         #---------------------         
fini: 	 jr 	  $ra 		    # return 
