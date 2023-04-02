*** Settings ***
Library       String
Documentation   Exemplo de e-mail customizado

*** Variable ***
&{PESSOA}       nome=Francieli    sobrenome=Celeghim

*** Test Cases ***
Imprimir e-mail customizado
    ${EMAIL}        Criar e-mail customizado        ${PESSOA.nome}      ${PESSOA.sobrenome}
    Log To Console     ${EMAIL}

*** Keywords ***
Criar e-mail customizado
    [Arguments]         ${NOME}    ${SOBRENOME}
    ${ALEATORIA}        Generate Random String
    ${EMAIL_FINAL}      Set Variable        ${NOME}${SOBRENOME}${ALEATORIA}@testerobot.com
    [Return]            ${EMAIL_FINAL}