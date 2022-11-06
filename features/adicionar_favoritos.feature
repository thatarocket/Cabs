#language: pt
#encoding: utf-8

Funcionalidade: Adicionar Favoritos
  Como usuário
  Para recordar os meus interesses
  Eu quero salvar os itens em uma lista

Cenário: Adicionar Favorito com Sucesso
  Dado que estou na página do item
  Quando clico em "Salvar como Favorito"
  Então o item deve ter sido salvo no banco de dados como Favoritos
  E deverei vê-lo no meu perfil

Cenário: Adicionar Favorito com Erro
    Dado que estou na página do item
    Quando clico em "Salvar como Favorito"
    Então o item não deve ter sido salvo no banco de dados como Favoritos
    E não deverei vê-lo no meu perfil
