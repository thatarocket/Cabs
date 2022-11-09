#language: pt
#encoding: utf-8

Funcionalidade: Cadastro do item
Como usuário
Para que eu possa ter um item disponível para trocar
Eu quero cadastrar um item no banco de dados

Cenário: Cadastro de item com sucesso
Dado que estou na página de cadastro de item
Quando preencho o campo "Nome" com <nome>
Quando seleciono o campo "Categoria" com <categoria>
Quando seleciono o campo "Condicao" com <condicao>
E clico em Anunciar
Então o item deve ter sido salvo no banco de dados
E deverei ver a mensagem "O item foi criado com sucesso"

Exemplos:
| nome            | categoria                 | condicao       |
| 'Boné preto'    | 'Acessórios'               | 'Usado'        |

Cenário: Cadastro de item com erro - sem nome
Dado que estou na página de cadastro de item
Quando seleciono o campo "Categoria" com <categoria>
Quando seleciono o campo "Condicao" com <condicao>
E deixo o campo "Nome" vazio
E clico em Anunciar
Então deverei ver a mensagem de erro "Informe o nome do item para poder anunciar!"

Exemplos:
| nome            | categoria                 | condicao       |
| ''   | 'Acessórios'               | 'Usado'        |

Cenário: Cadastro de item com erro - sem categoria
Dado que estou na página de cadastro de item
Quando preencho o campo "Nome" com <nome>
Quando seleciono o campo "Condicao" com <condicao>
E seleciono o campo "Categoria" vazio
E clico em Anunciar
Então deverei ver a mensagem de erro "Informe a categoria do item para poder anunciar!"

Exemplos:
| nome            | categoria                 | condicao       |
| 'Boné preto'   | ''               | 'Usado'        |

Cenário: Cadastro de item com erro - sem condição
Dado que estou na página de cadastro de item
Quando preencho o campo "Nome" com <nome>
Quando seleciono o campo "Categoria" com <categoria>
E seleciono o campo "Condicao" vazio
E clico em Anunciar
Então deverei ver a mensagem de erro "Informe a condição do item para poder anunciar!"

Exemplos:
| nome            | categoria                 | condicao       |
| 'Boné preto'   | 'Acessórios'               | ''        |