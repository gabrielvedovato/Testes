#INCLUDE "TOTVS.CH"

USER FUNCTION GetRaiz()

LOCAL nNumero := 49
LOCAL nRaiz   := 0

nRaiz := SQRT(nNumero)
Alert("A raiz quadrada de 49 �: " + CValToChar(nRaiz))

RETURN NIL
