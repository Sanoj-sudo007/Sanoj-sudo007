
**Free                                                                 
  ctl-opt Option(*SRCSTMT:*NODEBUGIO); // control option               
  dcl-s  Arr   Zoned(3:0) Dim(10);     // Array declaration            
                                                                       
   //***********************************************                   
   //   standalon varible declaration                                  
   //***********************************************                   
  dcl-s  i     Zoned(2:0);
  
  // Main Program Start Here 
   For i=1 to %elem(Arr);                                              
       Arr(i) =i+4;    // inserting elements into the array            
       Dsply ('element on index ' + %char(i) +' is ' + %char(Arr(i))); 
   EndFor;                                                             
   Return;                                                             
 /End-Free         
