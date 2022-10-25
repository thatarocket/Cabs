#language: pt
#encoding: utf-8

Funcionalidade: Pesquisar Itens
Como usuário
Para que eu possa pesquisar itens
Eu quero inserir palavras chave para pesquisa

Cenário: Sucesso na pesquisa de item
Dado que estou na página de itens
Quando preencho o campo de pesquisa com “nome do item” com “item-teste”
E clico em pesquisar, ou pressione enter
Então o sistema deve me retornar o item

Cenário: Falha na pesquisa do item
Dado que estou na página do usuário
Quando preencho o campo de pesquisa com “nome do item” com “it-teste”
E clico em pesquisar, ou pressione enter
Então o sistema deve me retornar que não existe item para a pesquisa

Cenário: Campo de pesquisa vazio
Dado que estou na página do usuário
Quando o campo de pesquisa estiver vazio
E clico em pesquisar, ou pressione enter
Então o sistema deve me retornar que é necessário inserir palavra de busca