**Free                                                    
  Dcl-S Arr1         Char(20)   DIM(20) CTDATA PERRCD(2); 
  Dcl-S Index        Int(10);                             
  Dcl-S Arrdata      Char(30);                            
                                                          
  Index =1;                                               
  DoW (Index <=5);                                        
      Arrdata = %trim(Arr1(Index));                       
      Dsply Arrdata;                                      
      Index = Index+1;                                    
  EndDo;                                                  
  Return;                                                 
                                                          
**CTDATA Arr1                                             
Sanoj     Kumar                                           
vivek     Sharma                                          
Ankit     Sharama                                         
Yashveer  Shakya                                          
Sandeep   Kumar           
