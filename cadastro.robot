***Settings***
Documentation       Suite de testes de cadastro

Library     SeleniumLibrary

***Test Cases***
cadastro simples
    Dado que acesso a página principal
    Quando submeto o meu email "josewilton@gmail.com"
    Então devo ser autenticado

***Keywords***
Dado que acesso a página principal
    Open Browser    http://ninjachef-qaninja-io.umbler.net      chrome

Quando submeto o meu email "${email}"
    Input Text      id:email    ${email}
    Click Element   css:button[type=submit]

Então devo ser autenticado
    Wait Until Page Contains Element    class:dashboard
    Close Browser