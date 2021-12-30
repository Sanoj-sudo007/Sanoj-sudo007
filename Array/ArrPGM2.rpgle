**Free                                                      
  ctl-opt Option(*SRCSTMT:*NODEBUGIO); // control option    
  dcl-s  Arr   Zoned(3:0) Dim(10);     // Array declaration 
                                                            
  //***********************************************         
  //   standalon varible declaration                        
  //***********************************************         
  dcl-s  i     Zoned(2:0);                                  
  dcl-s  index Zoned(2:0);                                  
                                                            
                                                            
  //***********************************************         
  //     inserting the element or Value                     
  //***********************************************         
                                                            
   For i=1 to %elem(Arr);                                   
       Arr(i) =i+1;                                         
   EndFor;                                                  
   
     //***********************************************         
  //      searching no. 8                                   
  //***********************************************         
                                                            
   index = %lookup(8:arr);                                  
                                                            
   if index <> 0;                                           
      Dsply ('Number 8 found on index ' +  %char(index));   
      else;                                                 
      Dsply 'Number 8 not Found in array';                  
   Endif;                                                   
                                                            
  //***********************************************         
  //      searching no. 5                                   
  //***********************************************         
                                                            
   index = %lookup(5:arr:6);                                
                                                            
   if index <> 0;                                           
      Dsply ('Number 5 found on index ' +  %char(index));   
             else;                                        
       Dsply 'Number 5 not Found in array';         
    Endif;                                          
                                                    
   //***********************************************
   //      searching no. 4 between 1 to 3 index no. 
   //***********************************************
                                                    
    index = %lookup(4:arr:1:3);                     
                                                              
   if index <> 0;                                         
      Dsply ('Number 4 found on index ' +  %char(index)); 
      else;                                               
      Dsply 'Number 4 not Found in array';                
   Endif;                                                 
                                                          
   Return;                                                
 /End-Free                      
