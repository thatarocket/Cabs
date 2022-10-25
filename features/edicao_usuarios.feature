#language: pt

#encoding: utf-8

Funcionalidade: Editar usuários
Como usuário
Para que eu altere minhas informações de Cadastro
Eu quero editar meu perfil

Cenário: Edição de usuário com sucesso
Dado que estou na página de edição de usuário
Quando substituo o campo "Username" com <username>
Quando substituo o campo "Email" com <email>
Quando substituo o campo "Senha" com <senha>
E clico em salvar novamente
Então ele deve ter sido salvo no banco de dados no mesmo id
E eu deverei ver o usuário na página seguinte

Exemplos:
| username | senha | email |
| 'thais-teste-novo' | 'teste1234novo' | 'thaisTesteNovo@gmail.com' |

Cenário: edição de usuário com erro - sem nome de usuário
Dado que estou na página de edição de usuário
Quando substituo o campo "Email" com <email>
Quando substituo o campo "Senha" com <senha>
E eu deixo o campo "Username" vazio
E clico em salvar novamente
Então eu deverei ver a mensagem de erro "É obrigatório informar o nome de usuário!"

Exemplos:
| username | senha | email |
| '' | 'teste1234novo' | 'thaisTesteNovo@gmail.com' |

Cenário: edição de usuário com erro - sem senha
Dado que estou na página de edição de usuário
Quando substituo o campo "Username" com <username>
Quando substituo o campo "Email" com <email>
E eu deixo o campo "Senha" vazio
E clico em salvar novamente
Então eu deverei ver a mensagem de erro "É obrigatório informar a senha!"

Exemplos:
| username | senha | email |
| 'thais-teste-novo' | '' | 'thaisTesteNovo@gmail.com' |

Cenário: edição de usuário com erro - sem email
Dado que estou na página de edição de usuário
Quando substituo o campo "Username" com <username>
Quando substituo o campo "Senha" com <senha>
E eu deixo o campo "Email" vazio
E clico em salvar novamente
Então eu deverei ver a mensagem de erro "É obrigatório informar o email!"

Exemplos:
| username | senha | email |
| 'thais-teste-novo' | 'teste1234novo' | '' |

Cenário: edição de usuário com erro - email inválido
Dado que estou na página de edição de usuário
Quando substituo o campo "Username" com <username>
Quando substituo o campo "Senha" com <senha>
E substituo o campo "Email" com <email>
E clico em salvar novamente
Então eu deverei ver a mensagem de erro "Formato de e-mail inválido!"

Exemplos:
| username | senha | email |
| 'thais-teste-novo' | 'teste1234novo' | '#,ç/?@@email' |