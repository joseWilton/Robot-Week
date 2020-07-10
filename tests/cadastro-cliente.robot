***Settings***
Documentation       Suite de testes de cadastro

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
cadastro simples
    Dado que acesso a página principal
    Quando submeto o meu email "josewilton@gmail.com"
    Então devo ser autenticado

Email incorreto
    Dado que acesso a página principal
    Quando submeto o meu email "errado$gmail.com"
    Então devo ser a mensagem "Oops. Informe um email válido!"

Email não informado
    Dado que acesso a página principal
    Quando submeto o meu email "${EMPTY}"
    Então devo ser a mensagem "Oops. Informe um email válido!"