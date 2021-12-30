    **------------------------------------------------------------------------/
     **                          Subfile Declaration                           /
     **------------------------------------------------------------------------/

     FSUBFILE5  CF   E             WORKSTN

     **------------------------------------------------------------------------/
     **     API QMHRMVPM (Remove program messages from the Program Queue       /
     **------------------------------------------------------------------------/
     D QMHRMVPM        PR                  EXTPGM('QMHRMVPM')
     D CallStackEntry...
     D                               10A   Const

     D CallStackCounter...
     D                               10I 0 Const

     D MessageKey...
     D                                4A   Const

     D MessageToRemove...
     D                               10A   Const

     D ErrorCode...
     D                            32767A   options(*VARSIZE)

     **------------------------------------------------------------------------/
     **         API QMHSNDPM (Send program message to the program Queue        /
     **------------------------------------------------------------------------/

     D QMHSNDPM        PR                  EXTPGM('QMHSNDPM')
     D MessageIdentifier...
     D                                7A   Const

     D QalifiedMessageFileName...
     D                               20A   Const

     D MessageDataOrImmediateText...
     D                            32767A   Const options(*VARSIZE)

     D LengthofMessageDataOrImmediateText...
     D                               10I 0 const

     D MessageType...
     D                               10A   Const

     D CallStackEntry...
     D                               10A   Const

     D CallStackCounter...
     D                               10I 0 Const

     D MessageKey...
     D                                4A

     D ErrorCode...
     D                            32767A   options(*varsize)


     **------------------------------------------------------------------------/
     **                       Variable Declaration                             /
     **------------------------------------------------------------------------/

     D CallStackEntry...
     D                 S             10A

     D CallStackCounter...
     D                 S             10I 0

     D MessageKey...
     D                 S              4A

     D MessageToRemove...
     D                 S             10A

     D MessageIdentifier...
     D                 S              7A

     D QualifiedMessageFilename...
     D                 S             20A

     D MessageDataOrImmediateText...
     D                 S          32767A

     D LengthofMessageDataOrImmediateText...
     D                 S             10I 0

     D MessageType...
     D                 S             10A

     **------------------------------------------------------------------------/
     **                       Data Structure   definition                      /
     **------------------------------------------------------------------------/
     D ErrorCode       DS
     D BytesProv                     10I 0 Inz(0)
     D BytesAvail                    10I 0 Inz(0)

      /Free
          // Write Footer Record Format
          Write Footer;

          // Write Message subfile control record format
          Write SFLCTLRFMT;

          // Write Header record format
          Exfmt Header;

          // If F3 is Pressed
          ExSr processKeyBoardKeys;

          // Validation subroutine
          ExSr ValidateInputs;

          //--------------------------------------------------//
          //            Subroutine :INZSR                     //
          //--------------------------------------------------//

          BegSr *InzSr;

            SFLPGMQ = '*';            // Use Program's Message Queue
            MessageType ='*DIAG';     // Message Type must be DIAGONOSTIC
            QualifiedMessageFileName='MSGFILE   SANOJ';//Setup msg file&Library
            MessageToRemove='*ALL';   // Remove All the Message from the pgm Queu
            MessageKey = *Blanks;
          EndSr;

          //---------------------------------------------------
          //  Subroutine :ProcessKeyboardkeys
          //---------------------------------------------------

           BegSr processKeyBoardKeys;
           // Execute this subroutine after every Exfmt(Write & Read)
           // Check if F3 is pressed then, Set the LR (Last Record Indicator)
           // To *ON and Exit from The program
           If *IN03=*ON;
              *INLR = *ON;
              Return;
           EndIf;
           EndSr;

          //-----------------------------------------------------
          //    ValidateInputs
          //-----------------------------------------------------
          BegSr ValidateInputs;

            MessageDataorImmediateText='Error Message';
            LengthofMessageDataorImmediateText= %LEN(%TRIMR(
                                                MessageDataOrImmediateText));

            // Clear the Message Subfile
            MessageKey = *Blanks;
            // Passing Value of to API
            CALLP(E) QMHRMVPM(SFLPGMQ:
                              CallStackCounter:
                              Messagekey:
                              MessageToRemove:
                              ErrorCode);

           // Validate First Name
           If FIRSTNAME = *Blanks;
              MessageIdentifier= 'MSG0001'; // assign msg id
              // Passing Value of to API
              CALLP(E) QMHSNDPM(MessageIdentifier:
                                QualifiedMessageFileName:
                                MessageDataOrImmediateText:
                                LengthofMessageDataOrImmediateText:
                                MessageType:
                                SFLPGMQ:
                                CallStackCounter:
                                MessageKey:
                                ErrorCode);

           EndIf;

           // Validate Last Name

           If LASTNAME  = *Blanks;
              MessageIdentifier= 'MSG0002'; //passing msg Id
              // passing value to API
              CALLP(E) QMHSNDPM(MessageIdentifier:
                                QualifiedMessageFileName:
                                MessageDataOrImmediateText:
                                LengthofMessageDataOrImmediateText:
                                MessageType:
                                SFLPGMQ:
                                CallStackCounter:
                                MessageKey:
                                ErrorCode);

           EndIf;

           //Validate Address
           If ADDRESS   = *Blanks;
              MessageIdentifier= 'MSG0003'; // passing msg id 
              // Passing Value to API
              CALLP(E) QMHSNDPM(MessageIdentifier:
                                QualifiedMessageFileName:
                                MessageDataOrImmediateText:
                                LengthofMessageDataOrImmediateText:
                                MessageType:
                                SFLPGMQ:
                                CallStackCounter:
                                MessageKey:
                                ErrorCode);

           EndIf;
           EndSr;
      /End-free
