#language: pt
#encoding: utf-8

Funcionalidade: Deletar usuário
Como usuário
Para que tire minha conta do ar
Eu quero deletar minha conta

Cenário: Deletar conta com sucesso
Dado que existe um usuário
E que ele está logado
E que estou na página principal
Quando clico em Deletar sua conta!!!
Então deverei ver a mensagem "Conta deletada com sucesso!"