#language: pt
#encoding: utf-8

Funcionalidade: Exibição itens
Como usuário
Para que eu possa ver os itens disponíveis
Eu quero que seja exibido os itens

Cenário: Exibição dos itens com sucesso
Dado que estou na página de início
Dado que exista itens cadastrados
Dado que haja itens existentes na categoria
Então o item deve ser exibido 

Exemplos:
| nome             | categoria                 | condicao       |
| 'Boné branco'    | 'Acessórios'             | 'Novo'        |

Cenário: Exibição dos itens com erro - sem itens na categoria
Dado que estou na página de início
Dado que exista itens cadastrados
E que não tenha itens existentes na categoria
Então a categoria não deve ser exibida

Exemplos:
| nome            | categoria                 | condicao       |
| 'Boné branco'    | 'Acessórios'             | 'Novo'        |
