#language: pt
#encoding: utf-8

Funcionalidade: Exibição itens
Como usuário
Para que eu possa ver os itens disponíveis
Eu quero que seja exibido os itens

Cenário: Exibição dos itens com sucesso
Dado que exista um item cadastrado
Dado que estou na página de início
Então deverei ver o item na página

Exemplos:
| nome                  | categoria            | condicao       |
| 'DVD Harry Potter'    | 'Objetos'             | 'Usado'        |

Cenário: Exibição dos itens com erro - sem itens na categoria
Dado que estou na página de início
E não exista um item na categoria
Então deverei ver na página "Não há itens cadastrados"

Exemplos:
| nome                  | categoria            | condicao            |
| 'DVD Harry Potter'    | 'Objetos'             | 'Usado'            |
| 'Blusa Harry Potter'    | 'Vestiário'             | 'Usado'        |
| 'Tênis Harry Potter'    | 'Sapatos'             | 'Usado'        |
