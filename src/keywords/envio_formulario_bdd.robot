***Settings***
Resource    ../main.robot

*** Keywords ***

 que tenha escolhido a sobremesa 
     [Arguments]                     ${sabor}
    Seu nome
    Selecionar sabor                 ${sabor}
    Participacao da festa            SIM
    quantidade de pessoas            10
    Selecionar pratos                Prato principal
    Input no elemento                ${PREENCHER.input_alergia_restricao_alimentar}    NÃO
    Input no elemento                ${PREENCHER.input_qual_endereco_email}            ${email}

o formulario deve ser enviado com sucesso
    Wait Until Element Is Visible    ${PREENCHER.validacao_envio_com_sucesso}

que sua participacao na festa seja
    [Arguments]                      ${participacao}
    Seu nome
    Selecionar sabor                 Pudim de leite
    Participacao da festa            ${participacao}
    quantidade de pessoas            10
    Selecionar pratos                Prato principal
    Input no elemento                ${PREENCHER.input_alergia_restricao_alimentar}    NÃO
    Input no elemento                ${PREENCHER.input_qual_endereco_email}            ${email}

que o numero de pessoas que comparecerao a festa seja ate
    [Arguments]                      ${qtd_pesoas}
    Seu nome
    Selecionar sabor                 Pudim de leite
    Participacao da festa            SIM
    quantidade de pessoas            ${qtd_pesoas}
    Selecionar pratos                Prato principal
    Input no elemento                ${PREENCHER.input_alergia_restricao_alimentar}    NÃO
    Input no elemento                ${PREENCHER.input_qual_endereco_email}            ${email}

que o numero de pessoas que comparecerao a festa seja
    [Arguments]                      ${qtd_pesoas}
    Seu nome
    Selecionar sabor                 Pudim de leite
    Participacao da festa            SIM
    Input no elemento                ${PREENCHER.input_quantas_pessoas_comparecerao}    ${qtd_pesoas}
    Selecionar pratos                Prato principal
    Input no elemento                ${PREENCHER.input_alergia_restricao_alimentar}    NÃO
    Input no elemento                ${PREENCHER.input_qual_endereco_email}            ${email}

o formulario nao deve ser enviado por apresenatar o erro 
    [Arguments]                      ${erro_formulario}
    Page Should Contain              ${erro_formulario}    

que informe o prato que ira levar
     [Arguments]                     ${prato}
    Seu nome
    Selecionar sabor                 Pudim de leite
    Participacao da festa            SIM
    quantidade de pessoas            10
    Selecionar pratos                ${prato}
    Input no elemento                ${PREENCHER.input_alergia_restricao_alimentar}    NÃO
    Input no elemento                ${PREENCHER.input_qual_endereco_email}            ${email}

que informe Alergia ou Restricao alimentar
    Seu nome
    Selecionar sabor                 Pudim de leite
    Participacao da festa            SIM
    quantidade de pessoas            10
    Selecionar pratos                Prato principal
    Input no elemento                ${PREENCHER.input_alergia_restricao_alimentar}    NÃO
    Input no elemento                ${PREENCHER.input_qual_endereco_email}            ${email}

que nao informe Alergia ou Restricao alimentar
    Seu nome
    Selecionar sabor                 Pudim de leite
    Participacao da festa            SIM
    quantidade de pessoas            10
    Selecionar pratos                Prato principal
    Input no elemento                ${PREENCHER.input_qual_endereco_email}            ${email}

que informe um email valido
    que informe Alergia ou Restricao alimentar

que nao informe um email valido
    Seu nome
    Selecionar sabor                 Pudim de leite
    Participacao da festa            SIM
    quantidade de pessoas            10
    Selecionar pratos                Prato principal
    Input no elemento                ${PREENCHER.input_alergia_restricao_alimentar}    NÃO

que informe um email invalido preenchido
    Seu nome
    Selecionar sabor                 Pudim de leite
    Participacao da festa            SIM
    quantidade de pessoas            10
    Selecionar pratos                Prato principal
    Input no elemento                ${PREENCHER.input_alergia_restricao_alimentar}    NÃO
    Input no elemento                ${PREENCHER.input_qual_endereco_email}            teste@@@@@####

que tenha selecionado a participacao na festa como
    [Arguments]                     ${participacao}
    Seu nome
    Selecionar sabor                 Pudim de leite
    Participacao da festa            ${participacao}

    Set Test Variable                ${limpeza}   ${participacao}

a secao deve ser limpa com sucesso
    Limpar secao da participacao     ${limpeza}

que tenha preenchido todos os campos do formulario
    que informe Alergia ou Restricao alimentar

clicar em enviar
    Click no elemento                ${PREENCHER.btn_enviar}

clicar em limpar secao
    Scroll Element Into View         ${PREENCHER.btn_limpar_secao}
    Click no elemento                ${PREENCHER.btn_limpar_secao}

clicar em limpar formulario
    Click no elemento                ${PREENCHER.btn_limpar_formulario}

confirmar a limpeza
    Wait Until Element Is Visible    ${PREENCHER.validacao_confirmacao_limpar_formulario}
    Click no elemento                ${PREENCHER.btn_confirmar_limpeza_formulario}

cancelar a limpeza
    Wait Until Element Is Visible    ${PREENCHER.validacao_confirmacao_limpar_formulario}
    Click no elemento                ${PREENCHER.btn_cancelar_limpeza_formulario}

o formulario deve retorna limpo ao inicio
    Wait Until Element Is Visible    ${PREENCHER.validacao_formulario_limpo}

o formulario nao deve retorna limpo ao inicio
    Should Not Be Empty               ${PREENCHER.input_seu_nome}

que tenha preenchido o campo Seu nome
    que informe Alergia ou Restricao alimentar

que nao tenha preenchido o campo Seu nome
    Scroll Element Into View             ${PREENCHER.radio_sim_participarei}
    Selecionar sabor                 Pudim de leite
    Participacao da festa            SIM
    quantidade de pessoas            10
    Selecionar pratos                Prato principal
    Input no elemento                ${PREENCHER.input_alergia_restricao_alimentar}    NÃO
    Input no elemento                ${PREENCHER.input_qual_endereco_email}            ${email}