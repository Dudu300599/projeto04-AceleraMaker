//HERC01C  JOB (COBOL),'COMPILA EXE',CLASS=A,MSGCLASS=X      
//*--------------------------------------------------------- 
//* COMPILAR E SALVAR O EXECUTAVEL NA LOADLIB                
//*--------------------------------------------------------- 
//COMPLINK EXEC COBUCL                                       
//COB.SYSLIB   DD DSN=HERC01.COPYLIB,DISP=SHR=SHR            
//COB.SYSIN    DD DSN=HERC01.SOURCE(PROG04),DISP=SHR         
//LKED.SYSLMOD DD DSN=HERC01.LOADLIB(PROG04),DISP=SHR        
//                                                           