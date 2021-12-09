**Free                                                   
  DCL-S prices PACKED(15:5) DIM(2);                      
  DCL-S price1 PACKED(15:3);                             
  DCL-S price2 PACKED(15:2);                             
                                                         
  prices(1) = 5.279;                                     
  prices(2) = 5.389;                                     
                                                         
  DSPLY '----------Without using Opcode Extender-------';
                                                         
  FOR-EACH price1 in prices;                             
     DSPLY (%char(price1));                              
  ENDFOR;                                                
                                                         
  DSPLY '----------After using Opcode Extender-------';  
                                                         
  FOR-EACH(H) price2 in prices;                          
     DSPLY (%char(price2));                              
  ENDFOR;                                                
  Return;
