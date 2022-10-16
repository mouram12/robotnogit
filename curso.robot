*** Settings ***
Library        SeleniumLibrary



*** Variables ***
${input_name}            id:name
${input_phone}            id:phone
${input_email}            id:email
${input_password}         id:password
${textarea_address}        id:address
${button_submit}          id:name
*** Keywords ***
Abrir o Navegador e acessar o site 
    Open Browser     https://itera-qa.azurewebsites.net/home/automation      Chrome

preencher os campos 

    input Text    ${input_name}         Bruno
    input Text    ${input_phone}        958360548
    input Text    ${input_email}        bruno.moura@gamail
    input Text    ${input_password}     123445555
    Input Text    ${textarea_address}   xxxxxxxxxxxxxx

clicar em submit
    Click Element  ${button_submit}


fechar o navegador
    Close Browser

*** Test Cases ***
Cenario 1: preencher formulario 
    Abrir o Navegador e acessar o site 
    preencher os campos 
    clicar em submit
    Fechar o Navegador


