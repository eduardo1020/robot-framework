*** Settings ***
Library    SeleniumLibrary
*** Variables ***
# dados do teste
${nomeDaMusica}    Ariana Grande Positions

# variáveis de configuração
${URL}    https://www.youtube.com/
${Browser}    chrome

# Elementos
${input_pesquisa}    //input[@id="search"]
${button_pesquisa}    //button[@id="search-icon-legacy"]
${link_primeiro_video}    (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${prova}    (//video[@class="video-stream html5-main-video"])[1]   

*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser    ${URL}    ${Browser}
Quando digito o nome da música
    Input Text    ${input_pesquisa}    ${nomeDaMusica}
E clico no botão buscar
    Click Button    ${button_pesquisa}
E clico na primeira opção da lista
    Wait Until Element Is Visible    ${link_primeiro_video}    5
    Click Element    ${link_primeiro_video}
Então o vídeo é executado
    Wait Until Element Is Visible    ${prova}    10
    Element Should Be Visible    ${prova}
    Sleep    1s
    Close Browser

*** Test Cases ***
Cenário 1: Executar video no site do youtube
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado