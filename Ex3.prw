#INCLUDE "TOTVS.CH"

USER FUNCTION GetRaiz2()

LOCAL cNumero := ""
LOCAL nRaiz   := 0
LOCAL nNumero := 0

cNumero := FWInputBox("Insira o n�mero",cNumero)
nNumero := Val(cNumero)

IF nNumero >= 0
    nRaiz := SQRT(nNumero)
    Alert("A raiz quadrada de " + cValtoChar(nNumero) + " �: " + CValToChar(nRaiz))
ELSE
    Alert("Insira um n�mero positivo!")
ENDIF

RETURN NIL
