#language: pt
#encoding: utf-8

Funcionalidade: Contato do usuário
Como usuário
Para que eu possa adicionar meu contato
Eu quero inserir meu contato no perfil do usuário

Cenário: adicionando contato com sucesso
Dado que estou logado
Quando vou para a página de perfil
E não tenho contato cadastrado
Então devo conseguir adicionar o meu contato
E devo conseguir ver o contato adicionado no meu perfil

Cenário: editando contato com sucesso
Dado que estou na página de perfil de usuário
E tenho contato cadastrado
Então devo conseguir editar o meu contato
E devo conseguir ver o contato editado no meu perfil