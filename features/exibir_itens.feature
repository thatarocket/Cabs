#language: pt
#encoding: utf-8

Funcionalidade: Exibição itens
Como usuário
Para que eu possa ver os itens disponíveis
Eu quero que seja exibido os itens

Cenário: Exibição dos itens com sucesso
Dado que estou na página de início
Dado que exista um item cadastrado
Então o item deve ser exibido 

Exemplos:
| nome             | categoria                 | condicao       |
| 'Boné branco'    | 'Acessórios'             | 'Novo'        |

Cenário: Exibição dos itens com erro - sem itens na categoria
Dado que estou na página de início
Dado que exista um item cadastrado
Então deverei ver na página "Não há itens cadastrados"
