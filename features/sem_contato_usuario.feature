#language: pt
#encoding: utf-8

Funcionalidade: Atualizar contato do usuario
Como usuário
Para que eu possa adicionar o contato
Eu quero ver o botão de adicionar o contato


Cenário: Conseguir ver tela de contato
Dado que estou no sistema e quero adicionar contato
Quando clico em adicionar contato
Então devo ser redirecionado para formulario de contato


Cenário: Conseguir adicionar contato
Dado que estou no sistema e quero adicionar contato
Quando preencho os dados de contato
Então devo ser redirecionado para o perfil com o contato atualizado

