#INCLUDE "TOTVS.CH"

USER FUNCTION GetMedia()
LOCAL cNota1 := ""
LOCAL cNota2 := ""
LOCAL cNota3 := ""
LOCAL nNota1 := 0
LOCAL nNota2 := 0
LOCAL nNota3 := 0
LOCAL nSoma  := 0
LOCAL nMedia := 0

cNota1 := FWInputBox("Insira a nota 1",cNota1)
cNota2 := FWInputBox("Insira a nota 2",cNota2)
cNota3 := FWInputBox("Insira a nota 3",cNota3)

nNota1 := VAL(cNota1)
nNota2 := VAL(cNota2)
nNota3 := VAL(cNota3)

nSoma := (nNota1+nNota2+nNota3)
nMedia := (nSoma/3)

IF nNota1 > 10 .or. nNota2 > 10 .or. nNota3 > 10
    Alert("Insira uma nota de 0 a 10!")
ELSE
    IF nMedia < 6
        Alert("Reprovado! A sua média foi de: " + CValToChar(Round(nMedia,0)))
    ELSE
        Alert("Aprovado! A sua média foi de: " + CValToChar(Round(nMedia,0)))
    ENDIF
ENDIF


RETURN NIL
