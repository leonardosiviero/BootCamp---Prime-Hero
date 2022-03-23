*** Settings ***
Test Setup              Abrir o navegador    
Test Teardown           Fechar o navegador
Library                 SeleniumLibrary

*** Variable ***
${BROWSER}          chrome
${URL}              http://automationpractice.com

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site

Caso de Teste 02: Pesquisar produto inexistente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Brusinha" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem No results were found for your search "Brusinha"

*** Keywords ***
### Setup
Abrir o navegador
    Open Browser        browser=${BROWSER}
    Maximize Browser Window

### Teardown
Fechar o navegador
    Close Browser

Acessar a página home do site Automation Practice
    Go To               ${URL}
    Wait Until Element Is Visible       xpath=//*[@id="block_top_menu"]/ul
    Title Should Be                     My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text          name=search_query       ${PRODUTO}
    Capture Page Screenshot

Clicar no botão pesquisar
    Click Element       name=submit_search
    Capture Page Screenshot

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible       xpath=//*[@id="center_column"]/h1
    Title Should Be                     Search - My Store
    Page Should Contain Image           xpath=//*[@id="center_column"]//*[@src="${URL}/img/p/7/7-home_default.jpg"]
    Page Should Contain Link            xpath=//*[@id="center_column"]//*[@class="product-name"][contains(text(), "${PRODUTO}")]

Conferir mensagem ${MSG_ERRO}
    Element Text Should Be  class=alert.alert-warning  ${MSG_ERRO}