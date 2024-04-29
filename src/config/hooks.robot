*** Settings ***
Resource    ../main.robot

*** Keywords ***
Acessar fromulario
    Open Browser    about:blank    chrome    
    Maximize Browser Window
    Go To    ${url}
    
Fechar navegador
    Capture Page Screenshot
    Close Browser
    
Click no elemento
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}    120s
    Click Element    ${element}

Input no elemento
    [Arguments]    ${element}    ${txt}
    Wait Until Element Is Visible    ${element}    120s
    Input Text    ${element}    ${txt}

