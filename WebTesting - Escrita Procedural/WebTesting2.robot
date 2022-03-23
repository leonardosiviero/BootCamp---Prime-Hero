*** Settings ***

Test Setup              Abrir o navegador
Test Teardown           Fechar o navegador
Library                 SeleniumLibrary

*** Variables ***

${BROWSER}          chrome
${URL}              http://automationpractice.com
${PRODUTO}          chocolate
${XPATH_PRODUTO}    xpath=/html/body/div/div[2]/div/div[3]/div[2]/p

*** Test Case ***

Caso de Teste 01: Pesquisar produto inexistente

    Acessar a página home do site Automation Practice
    Pesquisar
    Clicar no botão pesquisar
    Conferir se o produto ${PRODUTO} foi listado no site

*** Keywords ***

### setup

Abrir o navegador

  Open Browser  ${URL}  ${BROWSER}

### teardown

Fechar o navegador

  Close Browser

Acessar a página home do site Automation Practice

  #Go To               ${URL}

  Title Should Be     My Store

Pesquisar

  Wait Until Element Is Visible  id=search_query_top  10s

  Input Text    id=search_query_top    ${PRODUTO}

Clicar no botão pesquisar

  Click Element  name=submit_search

Conferir se o produto ${PRODUTO} foi listado no site

    Element Text Should Be  ${XPATH_PRODUTO}  No results were found for your search "chocolate"
    Log To Console  \nProduto: ${PRODUTO} não foi encontrado.
    