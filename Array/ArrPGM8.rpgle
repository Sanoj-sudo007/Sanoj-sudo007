**Free                               
  DCL-S msg CHAR(10) DIM(3);
  DCL-S state CHAR(20);              
                                     
  msg(1) = 'Hi';          
  msg(2) = 'Hello';        
  msg(3) = 'Bye';        
  FOR-EACH state in msg;    
     DSPLY state;                    
  EndFor;                            
  Return;                 
