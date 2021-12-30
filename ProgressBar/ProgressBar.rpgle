**Free                                                
                                                      
  //--------------------------------------//          
  //  File Decleration                                
  //--------------------------------------//          
                                                      
  ctl-opt option(*nodebugio:*srcstmt:*nounref) ;      
  ctl-opt dftactgrp(*no) actgrp(*new);                
  ctl-opt bnddir('QC2LE');                                               
  dcl-f BANKDSP  workstn; //display file declaration                             
                                                      
  dcl-s Tmpchar            char(100)   Inz;           
  dcl-s i                  packed(3:0) Inz;                     
  dcl-s InpVal             zoned(3:0)  Inz(100);      
  dcl-s Per                char(3)     Inz;           
  dcl-s MSec               uns(10)     Inz(999999);   
  dcl-s RtnVar             uns(10);                   
  dcl-c Color                          X'3B';     // for blue color hexadecimal ASCII code 
  dcl-c Normal                         X'20';
                                           
  dcl-pr usleep  Uns(10) ExtProc('usleep');    // external procedure call it is C program API
     *N          Uns(10)      Value;         
  End-PR;                                    
                                           
  //------------------------------------//   
  //  Progress bar Subroutine                
  //-----------------------------------//    
  
                                                            
     DoW *IN03 = *OFF;                                    
        Write SPLASHSCRN;     // display record format name                                  
        clear tmpChar;                                          
           For i=1 to InpVal;     // InpVal is the maximum number that loop execute like 100 for 100%                            
              per =%char(i)+'%';                               
              Pval =Color + %Subst(tmpChar:1:i) + per + Normal; // Pval  is the outputt filed of display file record format field 
              Write SPLASHSCRN;                              
              USleep(10000);                                   
           EndFor;                                            
               Exfmt SPLASHSCRN;
     EndDo;              
     *INLR = *ON;        
