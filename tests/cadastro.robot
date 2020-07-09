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


