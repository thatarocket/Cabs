#language: pt
#encoding: utf-8

Funcionalidade: Login Usuário
Como usuário
Para que eu possa ter acesso ao aplicativo
Eu quero realizar o login

Cenário: Login de usuário com sucesso
Dado que estou na página de login do usuário
Dado que existe um usuário
Quando preencho o campo "Username" com <username>
Quando preencho o campo "Password" com <password>
E clico em entrar
Então devo conseguir ter acesso ao sistema

Exemplos:
| username        | password          |         
| 'thais-teste'   | 'teste1234'    |       

Cenário: Login de usuário com erro - sem senha
Dado que estou na página de login do usuário
Dado que existe um usuário
Quando preencho o campo "Username" com <username>
E deixo o campo "Password" vazio
E clico em entrar
Então deverei ver a mensagem de erro "É obrigatório informar a senha!"

Exemplos:
| username        | password       |             
| 'thais-teste'   | ''          |   

Cenário: Login de usuário com erro - sem nome de usuário
Dado que estou na página de login do usuário
Dado que existe um usuário
Quando preencho o campo "Password" com <password>
E deixo o campo "Username" vazio
E clico em entrar
Então deverei ver a mensagem de erro "É obrigatório informar o nome de usuário!"

Exemplos:
| username        | password             | 
| ''              | 'teste1234'       | 

Cenário: Login de usuário com erro - senha incorreta
Dado que estou na página de login do usuário
Dado que existe um usuário
Quando preencho o campo "Password" com <password>
E preencho o campo "Username" com <username>
E clico em entrar
Então deverei ver na página "Username ou senha inválidos!"

Exemplos:
| username        | password             | 
| 'thais-teste'   | 'pastel'             | 

Cenário: Login de usuário com erro - nome de usuário incorreto
Dado que estou na página de login do usuário
Dado que existe um usuário
Quando preencho o campo "Password" com <password>
E preencho o campo "Username" com <username>
E clico em entrar
Então deverei ver na página "Username ou senha inválidos!"

Exemplos:
| username   | password             | 
| 'pastel'   | 'teste1234'          | 


