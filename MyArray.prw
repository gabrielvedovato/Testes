#INCLUDE "TOTVS.CH"


// Fazer uma rotina que no final informe:
// - Valor total da Lista de compras
// - Quantos produtos são do Tipo BASE
// - Quantos produtos não são BASE

USER FUNCTION MyArray()
LOCAL aListCom          := {}
LOCAL nValor            := 0
LOCAL nCont             := 0
LOCAL cConteudo         := ""
LOCAL nProdutosBase     := 0
LOCAL nProdutosNBase    := 0

aAdd(aListCom, { "Cafe"         , "Base"        , "R$ 12,00" }  )
aAdd(aListCom, { "Arroz"        , "Base"        , "R$ 35,00" }  )
aAdd(aListCom, { "Oleo"         , "Base"        , "R$ 9,90" }  )
aAdd(aListCom, { "Acucar"       , "Base"        , "R$ 4,40" }  )
aAdd(aListCom, { "Mouse"        , "Não Base"    , "R$ 118,40" }  )
aAdd(aListCom, { "Monitor"      , "Não Base"    , "R$ 1899,40" }  )
aAdd(aListCom, { "Guardanapo"   , "Não Base"    , "R$ 3,48" }  )
aAdd(aListCom, { "Leite"        , "Base"        , "R$ 4,18" }  )

For nCont:=1 to Len(aListCom)

    cConteudo := aListCom[nCont,3]
    cConteudo := SubStr(cConteudo, 3, Len(cConteudo))
    nValor += Val(cConteudo)

    IF ("Não" $ aListCom[nCont,2])
        nProdutosNBase ++
    ELSE
        nProdutosBase ++
    ENDIF

Next nCont

Alert("O valor da compra foi de: " + "R$" + cValToChar(nValor))
Alert("O total de produtos base sao de: " + cValToChar(nProdutosBase))
Alert("O total de produtos nao base sao de: " + cValToChar(nProdutosNBase))

RETURN nValor
