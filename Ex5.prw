#INCLUDE "TOTVS.CH"

USER FUNCTION EX5()

LOCAL cNum        := ""
LOCAL nNum        := 0
LOCAL nCont       := 1
LOCAL nQtdTabu    := 0
LOCAL cQtdTabu    := ""
LOCAL cTexto      := ""
LOCAL cRet        := ""

cQtdTabu          := FWInputBox("Até que número calcular",cQtdTabu)
nQtdTabu          := Val(cQtdTabu)
cNum              := FWInputBox("Insira o número para calcular",cNum)
nNum              := Val(cNum)

IF nQtdTabu > 0
    IF nNum > 0
        For nCont := 1 to nQtdTabu    
        cTexto := CValToChar(nNum) + " x " + CValToChar(nCont) +" = ";
        + CValToChar(nNum*nCont)
        cRet += cTexto + CRLF     
        NEXT nCont
    ELSE
        Alert("Digite um número válido!")
    ENDIF
ELSE
    Alert("Digite um número válido!")
ENDIF

IF cRet <> ""
    Alert(cRet)
ENDIF

RETURN NIL
