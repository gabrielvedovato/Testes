#INCLUDE "TOTVS.CH"

USER FUNCTION MyFunc()

    LOCAL cTexto := "Apresenta MyFunc"
    LOCAL dDataHj := cToD("14/09/2022")

        cTexto := RetTexto(cTexto,dDataHj)
            
            Alert(cTexto)

Return NIL

STATIC FUNCTION RetTexto(cTexto,dDataHj)

    LOCAL cRet := (cTexto + " - Texto retornado - " + DTOC(dDataHj))

RETURN cRet
