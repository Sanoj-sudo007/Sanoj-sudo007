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
   Dsply 'Before Sorting';                                   
   For i=1 to %elem(Arr);                                    
       Arr(i) =i;                                            
       Dsply Arr(i);                                         
   EndFor;                                                   
   
                              
   SortA(D) Arr;           
                           
   Dsply 'After  Sorting'; 
                           
   For i=1 to %elem(Arr);  
       Dsply Arr(i);       
   EndFor;                 
   Return;                 
 /End-Free              
