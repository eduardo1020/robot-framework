*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${variavel1}    teste
${variavel2}    hhh
${variavel3}    12345

*** Keywords ***
abrir site do google
     Open Browser    https://www.google.com/    chrome

fechar navegador
    Close Browser

abrir site da globo
    Open Browser    https://www.globo.com/    chrome

*** Test Cases ***
Cenário 1: Teste de abrir site google
    abrir site do google
    fechar navegador

Cenário 2: Teste de abrir o site globo
    abrir site da globo
    fechar navegador