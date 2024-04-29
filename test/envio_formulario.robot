Language: Brazilian Portuguese
***Settings***
Documentation    Essa Documentação se refere ao preenchimento de formulário de convite para a festa
Resource    ../src/main.robot
Test Setup       Acessar fromulario
Test Teardown    Fechar navegador
Test Tags    formulario

***Test Cases***

Cenario 01 - [Envio com Escolha da sobremesa] - Pudim de Leite
    [tags]  formulario_001
    Dado que tenha escolhido a sobremesa    Pudim de leite
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 02 - [Envio com Escolha da sobremesa] - Mousse de maracuja
    [tags]  formulario_002
    Dado que tenha escolhido a sobremesa     Mousse de maracujá
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 03 - [Envio com Escolha da sobremesa] - Pave de pessego
    [tags]  formulario_003
    Dado que tenha escolhido a sobremesa     Pavé de pêssego
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 04 - [Envio com Escolha da sobremesa] - Sorvete de flocos
    [tags]  formulario_004
    Dado que tenha escolhido a sobremesa     Sorvete de flocos
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 05 - [Envio com Participacao na festa] - SIM
    [tags]  formulario_005
    Dado que sua participacao na festa seja    SIM
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 06 - [Envio com Participacao na festa] - SIM
    [tags]  formulario_006
    Dado que sua participacao na festa seja    NÃO
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 07 - [Envio com comparecimento de] - <= 10 pessoas
    [tags]  formulario_007
    Dado que o numero de pessoas que comparecerao a festa seja ate    10
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso
    
Cenario 08 - [Envio com comparecimento de] - > 10 pessoas
    [tags]  formulario_008
    Dado que o numero de pessoas que comparecerao a festa seja    20
    Quando clicar em enviar
    Então o formulario nao deve ser enviado por apresenatar o erro    Precisa ser um número menor ou igual a 10

Cenario 09 - [ Envio prato da festa] - Prato principal
    [tags]   formulario_009
    Dado que informe o prato que ira levar    Prato principal
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 10 - [ Envio prato da festa] - Salada
    [tags]   formulario_010
    Dado que informe o prato que ira levar    Salada
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 11 - [ Envio prato da festa] - Sobremesa
    [tags]   formulario_011
    Dado que informe o prato que ira levar    Sobremesa
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso
    
Cenario 12 - [ Envio prato da festa] - Bebidas
    [tags]   formulario_012
    Dado que informe o prato que ira levar    Bebidas
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 13 - [ Envio prato da festa] - Acompanhamentos/aperitivos
    [tags]   formulario_013
    Dado que informe o prato que ira levar    Acompanhamentos/aperitivos
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 14 - [ Envio prato da festa] - Outro:
    [tags]   formulario_014
    Dado que informe o prato que ira levar    Outro:
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 15 - [Envio com Alergia ou Restricao preenchida]
    [tags]   formulario_015
    Dado que informe Alergia ou Restricao alimentar
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 16 - [Envio sem Alergia ou Restricao preenchida]
    [tags]   formulario_016
    Dado que nao informe Alergia ou Restricao alimentar
    Quando clicar em enviar
    Então o formulario nao deve ser enviado por apresenatar o erro    Esta pergunta é obrigatória

Cenario 17 -[ Envio com email] valido preenchido
    [tags]   formulario_017
    Dado que informe um email valido
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

Cenario 18 - [Envio sem email] valido preenchido
    [tags]   formulario_018
    Dado que nao informe um email valido
    Quando clicar em enviar
    Então o formulario nao deve ser enviado por apresenatar o erro    Esta pergunta é obrigatória

Cenario 19 - [Envio com email] invalido preenchido
    [tags]   formulario_019
    Dado que informe um email invalido preenchido
    Quando clicar em enviar
    Então o formulario nao deve ser enviado por apresenatar o erro    Precisa ser um e-mail válido.

Cenario 20 - [Limpar secao] Voce pode participar SIM
    [tags]   formulario_020
    Dado que tenha selecionado a participacao na festa como    SIM
    Quando clicar em limpar secao
    Então a secao deve ser limpa com sucesso

Cenario 21 - [Limpar secao] Voce pode participar NÃO
    [tags]   formulario_021
    Dado que tenha selecionado a participacao na festa como    NÃO
    Quando clicar em limpar secao
    Então a secao deve ser limpa com sucesso

Cenario 22 -[ Limpar formulario]
    [tags]   formulario_022
    Dado que tenha preenchido todos os campos do formulario
    Quando clicar em limpar formulario
    E confirmar a limpeza
    Então o formulario deve retorna limpo ao inicio

Cenario 23 - [Cancelar limpeza de formulario]
    [tags]   formulario_023
    Dado que tenha preenchido todos os campos do formulario
    Quando clicar em limpar formulario
    E cancelar a limpeza
    Então o formulario nao deve retorna limpo ao inicio

cenario 24 - [Envio campo Seu nome] preenchido
    [tags]    formulario_024
    Dado que tenha preenchido o campo Seu nome
    Quando clicar em enviar
    Então o formulario deve ser enviado com sucesso

cenario 25 - [Envio campo Seu nome] nao preenchido
    [tags]    formulario_025
    Dado que nao tenha preenchido o campo Seu nome
    Quando clicar em enviar
    Então o formulario nao deve ser enviado por apresenatar o erro    Esta pergunta é obrigatória



