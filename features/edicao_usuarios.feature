#language: pt

#encoding: utf-8

Funcionalidade: Editar usuários
Como usuário
Para que eu altere minhas informações de Cadastro
Eu quero editar meu perfil

Cenário: edição de usuário com sucesso
Dado que estou na página de edição de usuário
Quando preencho o campo "Username" com <username>
Quando preencho o campo "Email" com <email>
Quando preencho o campo "Senha" com <senha>
E clico em salvar
Então ele deve ter sido salvo no banco de dados
E deverei ver o usuário na página de listagem de usuários

Exemplos:
| username        | senha                     | email                         |
| 'thais-teste'   | 'teste1234'               | 'thaisTeste@gmail.com'        |


Cenário: edição de usuário com erro - sem nome de usuário
Dado que estou na página de edição de usuário
Quando preencho o campo "Email" com <email>
Quando preencho o campo "Senha" com <senha>
E deixo o campo "Username" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar o nome de usuário!"

Exemplos:
| username        | senha                     | email                         |
| ''              | 'teste1234'               | 'thaisTeste@gmail.com'        |


Cenário: edição de usuário com erro - sem senha
Dado que estou na página de edição de usuário
Quando preencho o campo "Username" com <username>
Quando preencho o campo "Email" com <email>
E deixo o campo "Senha" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar a senha!"

Exemplos:
| username        | senha                     | email                         |
| 'thais-teste'   | ''                        | 'thaisTeste@gmail.com'        |

Cenário: edição de usuário com erro - sem email
Dado que estou na página de edição de usuário
Quando preencho o campo "Username" com <username>
Quando preencho o campo "Senha" com <senha>
E deixo o campo "Email" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar o email!"

Exemplos:
| username        | senha                     | email                         |
| 'thais-teste'   | 'teste1234'               | ''                            |

Cenário: edição de usuário com erro - email inválido
Dado que estou na página de edição de usuário
Quando preencho o campo "Username" com <username>
Quando preencho o campo "Senha" com <senha>
E preencho o campo "Email" com <email>
E clico em salvar
Então deverei ver a mensagem de erro "Formato de e-mail inválido!"

Exemplos:
| username        | senha                     | email                         |
| 'thais-teste'   | 'teste1234'               | '#,ç/?@@email'                |