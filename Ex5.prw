#INCLUDE "TOTVS.CH"

USER FUNCTION EX5()

LOCAL cNum        := ""
LOCAL nNum        := 0
LOCAL nCont       := 1
LOCAL nQtdTabu    := 0
LOCAL cQtdTabu    := ""
LOCAL cTexto      := ""
LOCAL cRet        := ""

cQtdTabu          := FWInputBox("At� que n�mero calcular",cQtdTabu)
nQtdTabu          := Val(cQtdTabu)
cNum              := FWInputBox("Insira o n�mero para calcular",cNum)
nNum              := Val(cNum)

IF nQtdTabu > 0
    IF nNum > 0
        For nCont := 1 to nQtdTabu    
        cTexto := CValToChar(nNum) + " x " + CValToChar(nCont) +" = ";
        + CValToChar(nNum*nCont)
        cRet += cTexto + CRLF     
        NEXT nCont
    ELSE
        Alert("Digite um n�mero v�lido!")
    ENDIF
ELSE
    Alert("Digite um n�mero v�lido!")
ENDIF

IF cRet <> ""
    Alert(cRet)
ENDIF

RETURN NIL
