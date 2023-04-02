*** Settings ***
Documentation     DICIONÁRIOS

*** Variable ***
#Tipo Dicionário (chave=valor) - separar cada chave=valor com espaço duplo
&{MESES_DIAS}    janeiro=31    
...              fevereiro=28
...              março=31
...              abril=30
...              maio=31
...              junho=30
...              julho=31
...              agosto=31
...              setembro=30
...              outubro=31
...              novembro=30
...              dezembro=31

*** Test Cases ***
Imprimir quantidade de dias que cada mês tem
  Log To Console    Janeiro: ${MESES_DIAS.janeiro} dias
  Log To Console    Fevereiro: ${MESES_DIAS.fevereiro} dias
  Log To Console    Março: ${MESES_DIAS.março} dias
  Log To Console    Abril: ${MESES_DIAS.abril} dias
  Log To Console    Maio: ${MESES_DIAS.maio} dias
  Log To Console    Junho: ${MESES_DIAS.junho} dias
  Log To Console    Julho: ${MESES_DIAS.julho} dias
  Log To Console    Agosto: ${MESES_DIAS.agosto} dias
  Log To Console    Setembro: ${MESES_DIAS.setembro} dias
  Log To Console    Outubro: ${MESES_DIAS.outubro} dias
  Log To Console    Novembro: ${MESES_DIAS.novembro} dias
  Log To Console    Dezembro: ${MESES_DIAS.dezembro} dias