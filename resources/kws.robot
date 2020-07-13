***Settings***
Documentation       Aqui teremos todas as palavras chaves de automação dos comportamentos


***Keywords***
Dado que acesso a página principal
    Go To    http://ninjachef-qaninja-io.umbler.net

Quando submeto o meu email "${email}"
    Input Text      id:email    ${email}
    Click Element   css:button[type=submit]

Então devo ser autenticado
    Wait Until Page Contains Element    class:dashboard
    Close Browser

Então devo ser a mensagem "${expect_message}"
    Wait Until Element Contains     class:alert     ${expect_message}

### cadastro de pratos ###

Dado que "${nhoque}" é um dos meus pratos
    Set Test Variable   ${nhoque}

Quando faço o cadastro deste item
    Wait Until Element Is Visible   class:btn-add       5       
    Click Element                   class:btn-add

    Choose File         css:input[id=thumbnail]     ${CURDIR}/images/${produto['img']}
    Input Text          id:name     ${produto['nome']}
    Input Text          id:plate    ${produto['tipo']}
    Input Text          id:price    ${produto['preco']}
    Click Element       class:btn-cadastrar

Então deve ver esse prato no meu dashoboard
    Wait Until Element Contains     class:product-list      ${produto['nome']}