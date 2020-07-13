***Settings***

Documentation       Cadastro de produtos/pratos
...                 Sendo um cozinheiro amador
...                 Quero cadastrar meus melhores pratos
...                 Para que eu possa  conzinha-los para outras pessoas

Resource        ../resources/base.robot

Test Setup      Login Session       josewilltton@gmail.com
Test Teardown   Close Session

***Variables***
&{produto}=      img=nhoque.jpg    nome=nhoque molho páprica       tipo=Massas     preco=20.00

***Test Cases***
Novo prato
    Dado que "${produto}" é um dos meus pratos
    Quando faço o cadastro deste item
    Então deve ver esse prato no meu dashoboard