         .text         
main:    #---------------------    
         addi     $t0, $0, 60 
         srl      $t9, $t0, 1 
	 #---------------------
	 addi     $v0, $0, 2       # service #1 
         add      $a0, $0, $t9      # printInt 
         syscall                    # do print 
         #---------------------
	 addi     $v0, $0, 11       # service #1 
         add      $a0, $0, ' '      # printInt 
         syscall                    # do print
	 #---------------------
         sll      $t8, $t0, 4 
         addi     $v0, $0, 1       # service #1 
         add      $a0, $0, $t8      # printInt 
         syscall                    # do print
         #---------------------         
fini:    jr       $ra    
