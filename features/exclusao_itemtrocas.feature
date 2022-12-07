#language: pt
#encoding: utf-8

Funcionalidade: Excluir Item
Como usuário
Para que tire meu item do ar
Eu quero excluir meu item

Cenário: Exclusão de item com sucesso
Dado que existe um usuário
E que ele está logado
E que estou na página do item
Quando clico em Excluir este item
Então deverei ver a mensagem "O item foi excluído com sucesso"