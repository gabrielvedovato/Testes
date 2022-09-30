#INCLUDE "TOTVS.CH"

//Calcula com base na data do aniversário, calcula quantos dias se passaram, quantos meses e quantos anos
USER FUNCTION GetAnive()
LOCAL dDtNasc  := SuperGetMV("ES_DTNASC",.T.,"21/09/2000")
LOCAL nDifDia     := 0
LOCAL nDifMes     := 0
LOCAL nDifAno     := 0

nDifDia := DateDiffDay(dDtNasc,Date())
nDifMes := DateDiffMonth(dDtNasc,Date())
nDifAno := DateDiffYear(dDtNasc,Date())

Alert("O numero de dias passado foi de: " + CValToChar(nDifDia))
Alert("O numero de meses passado foi de: " + CValToChar(nDifMes))
Alert("O numero de anos passado foi de: " + CValToChar(nDifAno))

RETURN 
