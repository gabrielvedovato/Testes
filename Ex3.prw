#INCLUDE "TOTVS.CH"

USER FUNCTION GetRaiz2()

LOCAL cNumero := ""
LOCAL nRaiz   := 0
LOCAL nNumero := 0

cNumero := FWInputBox("Insira o número",cNumero)
nNumero := Val(cNumero)

IF nNumero >= 0
    nRaiz := SQRT(nNumero)
    Alert("A raiz quadrada de " + cValtoChar(nNumero) + " é: " + CValToChar(nRaiz))
ELSE
    Alert("Insira um número positivo!")
ENDIF

RETURN NIL
