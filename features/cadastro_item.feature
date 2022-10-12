#language: pt
#encoding: utf-8

Funcionalidade: Cadastro do item
Como usuário
Para que eu possa ter um item disponível para trocar
Eu quero cadastrar um item no banco de dados

Cenário: Cadastro de item com sucesso
Dado que estou na página de cadastro de item
Quando preencho o campo “Nome” com “Boné preto”
Quando preencho o campo “Categoria” com “Acessório”
Quando preencho o campo “Condição” com “Usado”
E clico em “Anunciar”
Então ele deve ter sido salvo no banco de dados
E deverei ver o item no meu perfil na listagem de items anunciados

Cenário: Cadastro de item com erro - sem nome
Dado que estou na página de cadastro de item
Quando preencho o campo “Categoria” com “Acessório”
Quando preencho o campo “Condição” com “Usado”
E deixo o campo “Nome” vazio
E clico em “Anunciar”
Então deverei ver a mensagem de erro “Informe o nome do item para poder anunciar!”

Cenário: Cadastro de item com erro - sem categoria
Dado que estou na página de cadastro de item
Quando preencho o campo “Nome” com “Boné preto”
Quando preencho o campo “Condição” com “Usado”
E deixo o campo “Categoria” vazio
E clico em “Anunciar”
Então deverei ver a mensagem de erro “Informe a categoria do item para poder anunciar!”

Cenário: Cadastro de item com erro - sem condição
Dado que estou na página de cadastro de item
Quando preencho o campo “Nome” com “Boné preto”
Quando preencho o campo “Categoria” com “Acessório”
E deixo o campo “Condição” vazio
E clico em “Anunciar”
Então deverei ver a mensagem de erro “Informe a condição do item para poder anunciar!”
