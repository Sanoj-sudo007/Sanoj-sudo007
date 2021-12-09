**Free                                                     
                                                           
  ctl-opt Option(*SRCSTMT:*NODEBUGIO); // control option   
                                                           
  //***********************************************        
  //   Array Declaration                                   
  //***********************************************        
                                                           
  dcl-s  Arr1  Zoned(3:0) Dim(10);                         
  dcl-s  Arr2  Zoned(3:0) Dim(10);                         
                                                           
  //***********************************************        
  //   standalon varible declaration                       
  //***********************************************        
                                                           
  dcl-s  i     Zoned(2:0);                                 
  dcl-s  index Zoned(2:0);                                 
                                                           
  //***********************************************        
  
                                                     
//***********************************************  
//     inserting the element or Value              
//***********************************************  
                                                   
 Dsply 'Before Sorting';                           
 For i=1 to %elem(Arr1);                           
     Arr1(i) =i;                                   
     Dsply Arr1(i);                                
 EndFor;                                           
                                                   
//***********************************************  
//     performing Subarray                          
//***********************************************   
                                                    
 Arr2 =%subarr(Arr1:4:4);                           
                                                    
 Dsply 'After SubArray ';                           
                                                    
 For i=1 to %elem(Arr2);                            
     Dsply Arr2(i);                                 
 EndFor;                 
 Return;     
 /End-Free     
