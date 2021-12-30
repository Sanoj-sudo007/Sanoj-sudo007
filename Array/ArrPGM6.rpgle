**Free                                                         
  Dcl-S Arr1         Char(10)   DIM(20) CTDATA ;               
  Dcl-S Arr2         Char(10)   DIM(20) CTDATA ;               
  Dcl-S Index        Int(10);                                  
  Dcl-S Arrdata      Char(30);                                 
                                                               
  Index =1;                                                    
  DoW (Index <=5);                                             
      Arrdata = %trim(Arr1(Index)) + '-' + %trim(Arr2(Index)); 
      Dsply Arrdata;                                           
      Index = Index+1;                                         
  EndDo;                                                       
  Return;                                                      
                                                               
**CTDATA Arr1                                                  
Sanoj                                                          
vivek                                                          
Ankit                                                          
Yashveer                                                       
Sandeep         
**CTDATA Arr2   
Kumar           
Sharma          
Sharama         
Shakya          
Kumar         
