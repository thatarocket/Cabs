#language: pt
#encoding: utf-8

Funcionalidade: Editar item
Como usuário
Para que eu possa alterar informações do item que cadastrei
Eu quero editar meu item

Cenário: Edição do item com sucesso
Dado que estou na página do item
Quando clico em Editar este item
Quando preencho o campo "Nome" com <nome>
Quando seleciono o campo "Categoria" com <categoria>
Quando seleciono o campo "Condicao" com <condicao>
E clico em Anunciar
Então o item deve ter sido alterado no banco de dados
E deverei ver a mensagem "O item foi atualizado com sucesso."

Exemplos:
| nome            | categoria                 | condicao       |
| 'Boné branco'    | 'Acessórios'               | 'Novo'        |

Cenário: Edição de item com erro - sem nome
Dado que estou na página do item
Quando clico em Editar este item
Quando seleciono o campo "Categoria" com <categoria>
Quando seleciono o campo "Condicao" com <condicao>
E deixo o campo "Nome" vazio
E clico em Anunciar
Então deverei ver a mensagem de erro "Informe o nome do item para poder anunciar!"

Exemplos:
| nome            | categoria                 | condicao       |
| ''    | 'Acessórios'               | 'Novo'        |

Cenário: Edição de item com erro - sem categoria
Dado que estou na página do item
Quando clico em Editar este item
Quando preencho o campo "Nome" com <nome>
Quando seleciono o campo "Condicao" com <condicao>
E seleciono o campo "Categoria" vazio
E clico em Anunciar
Então deverei ver a mensagem de erro "Informe a categoria do item para poder anunciar!"

Exemplos:
| nome            | categoria                 | condicao       |
| 'Boné branco'    | ''               | 'Novo'        |

Cenário: Edição de item com erro - sem condição
Dado que estou na página do item
Quando clico em Editar este item
Quando preencho o campo "Nome" com <nome>
Quando seleciono o campo "Categoria" com <categoria>
E seleciono o campo "Condicao" vazio
E clico em Anunciar
Então deverei ver a mensagem de erro "Informe a condição do item para poder anunciar!"

Exemplos:
| nome            | categoria                 | condicao       |
| 'Boné branco'    | 'Acessórios'               | ''        |
