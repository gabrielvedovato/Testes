#INCLUDE "TOTVS.CH"

USER FUNCTION GetRaiz()

LOCAL nNumero := 49
LOCAL nRaiz   := 0

nRaiz := SQRT(nNumero)
Alert("A raiz quadrada de 49 é: " + CValToChar(nRaiz))

RETURN NIL
