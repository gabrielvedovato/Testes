#INCLUDE "TOTVS.CH"

USER FUNCTION BscPrec()

LOCAL cProduto   := "Feijao"
LOCAL cMsg       := "O preço do " + cProduto + " é de: "
LOCAL cMsg2      := " e o tipo do produto é: "
LOCAL aRetorno   := {}

aRetorno         := u_MyArray3(cProduto,@cMsg,@cMsg2)

IF Len(aRetorno) > 0
    Alert(cMsg + aRetorno[1] + CRLF + cMsg2 + aRetorno[2])
ELSE
    Alert(cMsg)
ENDIF

RETURN NIL


USER FUNCTION MyArray3(cProduto,cMsg,cMsg2)
LOCAL aListCom          := {}
//LOCAL cValor            := ""
//LOCAL nCont           := 0
LOCAL nPos              := 0
LOCAL aRet              := {}

aAdd(aListCom, { "Cafe"         , "Base"        , "R$ 12,00" }  )
aAdd(aListCom, { "Arroz"        , "Base"        , "R$ 35,00" }  )
aAdd(aListCom, { "Oleo"         , "Base"        , "R$ 9,90" }  )
aAdd(aListCom, { "Acucar"       , "Base"        , "R$ 4,40" }  )
aAdd(aListCom, { "Mouse"        , "NÃ£o Base"   , "R$ 118,40" }  )
aAdd(aListCom, { "Monitor"      , "NÃ£o Base"   , "R$ 1899,40" }  )
aAdd(aListCom, { "Guardanapo"   , "NÃ£o Base"   , "R$ 3,48" }  )
aAdd(aListCom, { "Leite"        , "Base"        , "R$ 4,18" }  )

   
nPos :=  aScan(aListCom, {|x| x[1] == cProduto})

IF nPos > 0
        aAdd(aRet, aListCom[nPos,3]) //1
        aAdd(aRet, aListCom[nPos,2]) //2
ELSE
        cMsg  := "PRODUTO NÃO ENCONTRADO"
ENDIF

RETURN aRet
