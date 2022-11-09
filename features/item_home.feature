#language: pt

Funcionalidade: Exibição do item
Como usuário
Para que eu possa ver o item
Eu quero vê-lo a partir da tela inicial

Cenário: Sucesso na visualização do item
Dado que tenho itens cadastrados
Quando clico no botão de item
Então devo ver a tela com os itens

Cenário: Falha na visualização do item
Dado que não tenho itens cadastrados
Quando clico em item
Então devo ver um erro de Não existem itens cadastrados.