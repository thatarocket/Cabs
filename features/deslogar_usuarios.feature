#language: pt
#encoding: utf-8

Funcionalidade: Deslogar Usuário
Como usuário
Para que eu possa sair do sistema
Eu quero realizar deslogar

Cenário: deslogar usuarios com sucesso 
Dado que estou na página principal
Dado que existe um usuário
E clico em deslogar
Então deverei ver a página de login
E deverei ver na página "Deslogado com sucesso!"


