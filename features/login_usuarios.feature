#language: pt
#encoding: utf-8

Funcionalidade: Login Usuário
Como usuário
Para que eu possa ter acesso ao aplicativo
Eu quero realizar o login

Cenário: Login de usuário com sucesso
Dado que estou na página de login do usuário
Quando preencho o campo "Username" com <username>
Quando preencho o campo "Senha" com <senha>
E clico em entrar
Então devo conseguir ter acesso ao sistema

Exemplos:
| username        | senha          |         
| 'thais-teste'   | 'teste1234'    |       

Cenário: Login de usuário com erro - sem senha
Dado que estou na página de login do usuário
Quando preencho o campo "Username" com <username>
E deixo o campo "Senha" vazio
E clico em entrar
Então deverei ver a mensagem de erro "É obrigatório informar a senha!"

Exemplos:
| username        | senha       |             
| 'thais-teste'   | ''          |   

Cenário: Login de usuário com erro - sem nome de usuário
Dado que estou na página de login do usuário
Quando preencho o campo "Senha" com <senha>
E deixo o campo "Username" vazio
E clico em entrar
Então deverei ver a mensagem de erro "É obrigatório informar o nome de usuário!"

Exemplos:
| username        | senha             | 
| ''              | 'teste1234'       | 
