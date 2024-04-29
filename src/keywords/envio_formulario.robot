***Settings***
Resource    ../main.robot

*** Keywords ***

Seu nome
    Input no elemento                    ${PREENCHER.input_seu_nome}    ${nome}
    Scroll Element Into View             ${PREENCHER.radio_sim_participarei}

Selecionar sabor
    [Arguments]    ${sabor}
    Click no elemento                    ${PREENCHER.select_escolha_sobremesa}
    Click no elemento                    //div[@data-value='${sabor}'][@role='option']


Selecionar pratos
    [Arguments]    ${pratos}
    Click Element                        //label[@class='docssharedWizToggleLabeledContainer Yri8Nb']//div[@aria-label='${pratos}']

Participacao da festa
    [Arguments]                          ${participacao}
    IF     '${participacao}' == 'SIM'
        Click no elemento                ${PREENCHER.radio_sim_participarei}
    ELSE
        Click no elemento                ${PREENCHER.radio_nao_participarei}
    END

Limpar secao da participacao
    [Arguments]                          ${participacao}
    IF     '${participacao}' == 'SIM'
        Wait Until Element Is Visible    ${PREENCHER.validacao_participacao_sim_limpa}
    ELSE
        Wait Until Element Is Visible    ${PREENCHER.validacao_participacao_nao_limpa}
    END

quantidade de pessoas
    [Arguments]                         ${qtd_pesoas}
    IF     ${qtd_pesoas} <= 10
        Input no elemento               ${PREENCHER.input_quantas_pessoas_comparecerao}    ${qtd_pesoas}
    ELSE
        Fatal Error                     Precisa ser um número menor ou igual a 10
    END
    

    