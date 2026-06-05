//HERC01A  JOB (COBOL),'PROJETO 4',CLASS=A,MSGCLASS=X       
//*---------------------------------------------------------
//* 1. ORDENAR AS CONTAS                                    
//*---------------------------------------------------------
//SORTSTEP EXEC PGM=SORT                                    
//SYSOUT   DD SYSOUT=*                                      
//SORTLIB  DD DSN=SYS1.SORTLIB,DISP=SHR                     
//SORTIN   DD DSN=HERC01.CONTAS.TXT,DISP=SHR                
//SORTOUT  DD DSN=&&ORD,DISP=(NEW,PASS),                    
//            UNIT=SYSDA,SPACE=(TRK,(2,2)),                 
//            DCB=(RECFM=FB,LRECL=54,BLKSIZE=540)           
//SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1,1))                  
//SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1,1))                  
//SORTWK03 DD UNIT=SYSDA,SPACE=(CYL,(1,1))                  
//SYSIN    DD *                                             
 SORT FIELDS=(39,4,CH,A)                                    
/*                                                          
//*---------------------------------------------------------
//* 2. COMPILAR E EXECUTAR                                  
//*---------------------------------------------------------
                                                            
//COBRUN   EXEC COBUCG,PARM.COB='LIB,LOAD,SIZE=2048K,BUF=1024K', 
//             COND=(0,NE,SORTSTEP)                              
//COB.SYSIN DD DSN=HERC01.SOURCE(PROG04),DISP=SHR                
//GO.ENTRADA DD DSN=&&ORD,DISP=(OLD,DELETE)                      
//GO.SAIDA   DD DSN=HERC01.RELAT.TXT,DISP=SHR                    
//GO.SYSOUT  DD SYSOUT=*                                         
//                                                               