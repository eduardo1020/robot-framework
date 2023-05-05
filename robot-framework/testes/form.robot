*** Comments ***
#automatizar um formulario


*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# por boas práticas, armazenamos o lacators em variáveis (mais fácil de dar manutenção)

${input_name}           //input[@id="name"]
${input_phone}          //input[@id="phone"]
${input_email}          //input[@id="email"]
${input_password}       //input[@id="password"]
${textarea_address}     //textarea[@id="address"]
${buttton_submit}       //button[@name="submit"]

# xPath
# //input[@id="name"]
# //input[@id="phone"]
# //input[@id="email"]
# //input[@id="password"]
# //textarea[@id="address"]
# //button[@name="submit"]

*** Keywords ***
abrir navegador e acessar o site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome

preencher campos
    Input Text    ${input_name}    Eduardo
    Sleep    1s
    Input Text    ${input_phone}    983129202
    Sleep    1s
    Input Text    ${input_email}    eduardofilipe538@gmail.com
    Sleep    1s
    Input Text    ${input_password}    123456
    Sleep    1s
    Input Text    ${textarea_address}    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

clicar em submit
    Click Element    ${buttton_submit}

fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Preencher formulário
    abrir navegador e acessar o site
    preencher campos
    clicar em submit
    fechar navegador