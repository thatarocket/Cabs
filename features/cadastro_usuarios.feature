#language: pt
#encoding: utf-8

Funcionalidade: Cadastrar usuários
Como usuário
Para que eu possa ter acesso ao aplicativo
Eu quero realizar o cadastro

Cenário: Cadastro de usuário com sucesso
Dado que estou na página de cadastro de usuário
Quando preencho o campo "username" com <username>
Quando preencho o campo "email" com <email>
Quando preencho o campo "senha" com <senha>
E clico em salvar
Então devo conseguir ter acesso ao sistema

Exemplos:
| username        | senha                     | email                         |
| 'thais-teste'   | 'teste1234'               | 'thaisTeste@gmail.com'        |
| 'thatarocket'   | 'pastel204'               | 'thais.souza.rodrigues@usp.br'|


Cenário: Cadastro de usuário com erro - sem nome de usuário
Dado que estou na página de cadastro de usuário
Quando preencho o campo "email" com <email>
Quando preencho o campo "senha" com <senha>
E deixo o campo "username" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar o nome de usuário!"

Exemplos:
| username        | senha                     | email                         |
| ''              | 'teste1234'               | 'thaisTeste@gmail.com'        |
| ''              | 'pastel204'               | 'thais.souza.rodrigues@usp.br'|


Cenário: Cadastro de usuário com erro - sem senha
Dado que estou na página de cadastro de usuário
Quando preencho o campo "username" com <username>
Quando preencho o campo "email" com <email>
E deixo o campo "senha" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar a senha!"

Exemplos:
| username        | senha                     | email                         |
| 'thais-teste'   | ''                        | 'thaisTeste@gmail.com'        |
| 'thatarocket'   | ''                        | 'thais.souza.rodrigues@usp.br' |

Cenário: Cadastro de usuário com erro - sem email
Dado que estou na página de cadastro de usuário
Quando preencho o campo "username" com <username>
Quando preencho o campo "senha" com <senha>
E deixo o campo "email" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar o email!"

Exemplos:
| username        | senha                     | email                         |
| 'thais-teste'   | 'teste1234'               | ''                            |
| 'thatarocket'   | 'pastel204'               | ''                            |

Cenário: Cadastro de usuário com erro - email já utilizado
Dado que estou na página de cadastro de usuário
Quando preencho o campo "username" com <username>
Quando preencho o campo "email" com <email>
Quando preencho o campo "senha" com <senha>
E já existe uma conta com esse email
E clico em salvar
Então deverei ver a mensagem de erro "Já existe uma conta com esse email!"

Exemplos:
| username        | senha                     | email                         |
| 'thais-teste'   | 'teste1234'               | 'thais.souza.rodrigues@usp.br'|
| 'thatarocket'   | 'pastel204'               | 'thais.souza.rodrigues@usp.br'|

Cenário: Cadastro de usuário com erro - nome de usuário já utilizado
Dado que estou na página de cadastro de usuário
Quando preencho o campo "username" com <username>
Quando preencho o campo "email" com <email>
Quando preencho o campo "senha" com <senha>
E já existe uma conta com esse nome de usuário
E clico em salvar
Então deverei ver a mensagem de erro "Já existe uma conta com esse email!"

Exemplos:
| username        | senha                     | email                         |
| 'thatarocket'   | 'teste1234'               | 'thaisTeste@gmail.com'        |
| 'thatarocket'   | 'pastel204'               | 'thais.souza.rodrigues@usp.br'|


Cenário: Cadastro de usuário com erro - email inválido
Dado que estou na página de cadastro de usuário
Quando preencho o campo "username" com <username>
Quando preencho o campo "senha" com <senha>
E preencho o campo "email" com <email>
E clico em salvar
Então deverei ver a mensagem de erro "Formato de email inválido!"

Exemplos:
| username        | senha                     | email                         |
| 'thatarocket'   | 'teste1234'               | '#,ç/?@@email'                |
| 'thatarocket'   | 'pastel204'               | ';;!#;@@mailbr'               |


