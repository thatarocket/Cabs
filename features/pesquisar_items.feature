#language: pt
#encoding: utf-8

Funcionalidade: Pesquisar itens
Como usuário
Para que eu possa encontrar itens
Eu quero buscar por itens

Cenário: Pesquisando item com sucesso
Dado que estou na página de início
Dado que exista um item cadastrado
Quando preencho o campo "item" com <item>
E clico em pesquisar
Então deverei ver o item na página de resultados
E deverei ver a página de resultados

Exemplos:
| item             |
| 'harry potter'   |

Cenário: Pesquisando item com erro - campo vazio
Dado que estou na página de início
Dado que exista um item cadastrado
Quando deixo o campo "item" vazio
E clico em pesquisar
Então deverei ver na página "Nenhum resultado encontrado"

Exemplos:
| item             |
| ''               |

Cenário: Pesquisando item com erro - item não foi encontrado 
Dado que estou na página de início
Dado que exista um item cadastrado
Quando preencho o campo "item" com <item>
E clico em pesquisar
Então deverei ver na página "Nenhum resultado encontrado"

Exemplos:
| item        |
| 'pastel'    |
