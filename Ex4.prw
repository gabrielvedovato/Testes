#INCLUDE "TOTVS.CH"

USER FUNCTION EX4()

LOCAL nNum        := 2
LOCAL nCont       := 1

For nCont :=1 to 10
    
    Alert(CValToChar(nNum) + " vezes " + CValToChar(nCont) +" é igual a: ";
    + CValToChar(nNum*nCont))
    
NEXT nCont

RETURN
