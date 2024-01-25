*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${BROWSER}                 chrome 
${URL}                     http://www.amazon.com.br
${MENU_ELETRONICOS}        //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}      //h1[contains(.,'Eletrônicos e Tecnologia')]
${BTN_ADD_CARRINHO}        add-to-cart-button
${NAO_OBRIGADO}            //input[contains(@aria-labelledby,'attachSiNoCoverage-announce')]
${ADICIONADO_NO_CARRINHO}  //span[@class='a-size-medium-plus a-color-base sw-atc-text a-text-bold'][contains(.,'Adicionado ao carrinho')]
${CARRINHO}                xpath://a[@href='/cart?ref_=sw_gtc' and normalize-space(text())='Ir para o carrinho']
${EXCLUIR}                 //input[contains(@value,'Excluir')]
${REMOVIDO_DO_CARRINHO}    //h1[@class='a-spacing-mini a-spacing-top-base'][contains(.,'Seu carrinho de compras da Amazon está vazio.')]


*** Keywords ***
Abrir o navegador
    Open Browser    #browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Dado que estou na home page da Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Quando acessar o menu Eletrônicos
    Click Element    locator=${MENU_ELETRONICOS}

Então o título da página deve ser "${TITULO}"
    Title Should Be    title=${TITULO}

E o texto "${FRASE}" deve ser exibido na página
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

E a categoria "${NOME_CATEGORIA}" deve ser exibida na página
    Element Should Be Visible    locator=//a[@aria-label='${NOME_CATEGORIA}']

Quando pesquisar pelo produto "${PRODUTO}"
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}
    Click Element    locator=nav-search-submit-button

E um produto da linha "${PRODUTO}" deve ser mostrado na página
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[3]

Quando adicionar o produto "${PRODUTO}" no carrinho
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}
    Click Element    locator=nav-search-submit-button
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[3]

    Click Element    locator=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')]
    Wait Until Element Is Visible    locator=${BTN_ADD_CARRINHO}
    Click Button    locator=${BTN_ADD_CARRINHO}

Então o produto "${PRODUTO}" deve ser mostrado no carrinho
    Wait Until Element Is Visible    locator=${ADICIONADO_NO_CARRINHO}
    Click Element    locator=${CARRINHO}      
    Wait Until Element Is Visible    locator=//span[@class='a-truncate-cut'][contains(.,'${PRODUTO}')]

E existe o produto "${PRODUTO}" no carrinho
    Quando adicionar o produto "${PRODUTO}" no carrinho 
    Então o produto "${PRODUTO}" deve ser mostrado no carrinho

Quando remover o produto "${PRODUTO}" do carrinho
    Click Element   locator=${EXCLUIR}

Então o carrinho deve ficar vazio
    Wait Until Element Is Visible    locator=${REMOVIDO_DO_CARRINHO}