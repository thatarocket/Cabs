Funcionalidade: Editar item
Como usuário
Para que eu possa alterar informações do item que cadastrei
Eu quero editar meu item

Cenário: Edição do item com sucesso
Dado que estou na página do item
Quando clico em "Editar este item"
Quando preencho o campo fotos com uma foto do item
Quando mudo o campo “Nome” para  “Boné preto”
Quando mudo o campo “Categoria” para “Acessório”
Quando mudo o campo “Condição” para  “Usado”
E clico em “Anunciar”
Então ele deve ter sido alterado no banco de dados
E deverei ver a mensagem "O item foi atualizado com sucesso."

Cenário: Edição de item com erro - sem nome
Dado que estou na página do item
Quando clico em "Editar este item"
Quando mudo o campo “Categoria” para  “Acessório”
Quando mudo o campo “Condição” para  “Usado”
E deixo o campo “Nome” vazio
E clico em “Anunciar”
Então deverei ver a mensagem de erro “Informe o nome do item para poder anunciar!”

Cenário: Edição de item com erro - sem categoria
Dado que estou na página do item
Quando clico em "Editar este item"
Quando mudo o campo “Nome” para  “Boné preto”
Quando mudo o campo “Condição” para  “Usado”
E deixo o campo “Categoria”  vazio
E clico em “Anunciar”
Então deverei ver a mensagem de erro “Informe a categoria do item para poder anunciar!”

Cenário: Edição de item com erro - sem condição
Dado que estou na página do item
Quando clico em "Editar este item"
Quando mudo o campo “Nome” para  “Boné preto”
Quando mudo o campo “Categoria” para  “Acessório”
E deixo o campo “Condição” vazio
E clico em “Anunciar”
Então deverei ver a mensagem de erro “Informe a condição do item para poder anunciar!”
