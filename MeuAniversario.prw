#INCLUDE "TOTVS.CH"

USER FUNCTION FGetAniversario()
    local cDia := FGetDia()
    local cMes := FGetMes()
    local cAno := FGetAno()
    local cAniversario := (cDia + "/" +cMes + "/" + CAno)
    
    Alert ("O aniversário do Gabriel é " + cAniversario)
RETURN NIL

STATIC FUNCTION FGetDia()
    local cDia := "21"
RETURN cDia

STATIC FUNCTION FGetMes()
    local cMes := "09"
RETURN cMes

STATIC FUNCTION FGetAno()
    local cAno := "2000"
RETURN cAno
