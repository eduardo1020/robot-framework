*** Settings ***
Documentation   Exercício do capítulo de Estruturas do Robo Framework
Test Setup      Log To Console    ${\n}
Test Teardown   Log To Console    ${\n}


*** Variables ***
@{MINHA_LISTA_DE_NUMEROS}   34  10  53  5  9  17


*** Test Case ***
01: Exercicio Estruturas
    Log To Console    ${\n}
    FOR   ${NUMERO}    IN   @{MINHA_LISTA_DE_NUMEROS}
        # Log To Console    Meu número é: ${NUMERO}!
        
        IF  ${NUMERO} == 5
            Log  message=Eu sou o número 5!  console=True
        ELSE IF    ${NUMERO} == 10
            Log  message=Eu sou o número 10!  console=True
        ELSE
            Log  message=Eu não sou o número 5 e nem o 10!  console=True
        END
    END
        
   