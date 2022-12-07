#language: pt
#encoding: utf-8

Funcionalidade: Favoritar Item
Como usuário
Para marcar itens que tenho interesse
Eu quero favoritar um item

Cenário: Favoritar item
Dado que existe um usuário
E que ele está logado
E que estou na página do item
Quando clico em "Favoritar"
E clico em "Voltar aos itens"
Então deverei ver meu item na aba de favoritos

Cenário: Desfavoritar item
Dado que existe um usuário
E que ele está logado
E que estou na página do item
Quando clico em "Favoritar"
E clico em "Desfavoritar"
E clico em "Voltar aos itens"
Então não deverei ver meu item na aba de favoritos