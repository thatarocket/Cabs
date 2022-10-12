Dado('que estou na página de cadastro de usuário') do
  visit '/usuarios/new'
end

Quando('preencho o campo {string} com {string}') do |string, string2|
  fill_in string, :with => string2  
end

Quando('clico em salvar') do
  click_on 'Salvar novo usuário'
end

Então('ele deve ter sido salvo no banco de dados') do
  usuario = Usuario.order("id").last
  expect(usuario.username).to eq('thais-teste') 
  expect(usuario.email).to eq('thaisTeste@gmail.com') 
  expect(usuario.senha).to eq('teste1234')
end

Então('deverei ver o usuário na página de listagem de usuários') do
  expect(page).to have_content('thais-teste')
  expect(page).to have_content('thaisTeste@gmail.com')
end

Quando('deixo o campo {string} vazio') do |string|
  fill_in string, :with => ""
end

Então('deverei ver a mensagem de erro {string}') do |string|
  expect(page).to have_content(string)
end

Dado('que já existe uma conta com esse e-mail') do
  usuario = Usuario.create(username:'thais-teste', email:'thais.souza.rodrigues@usp.br', senha:'teste1234')
  fill_in 'usuario_username', :with => 'thais-teste'
  fill_in 'usuario_email', :with => 'thais.souza.rodrigues@usp.br'
  fill_in 'usuario_senha', :with => 'teste1234'
  click_on 'Salvar novo usuário'

  expect(usuario.username).to eq('thais-teste') 
  expect(usuario.email).to eq('thais.souza.rodrigues@usp.br') 
  expect(usuario.senha).to eq('teste1234')
end

Dado('já existe uma conta com esse nome de usuário') do
  usuario = Usuario.create(username:'thatarocket', email:'thaisTeste@gmail.com', senha:'teste1234')
  fill_in 'usuario_username', :with => 'thatarocket'
  fill_in 'usuario_email', :with => 'thaisTeste@gmail.com'
  fill_in 'usuario_senha', :with => 'teste1234'
  click_on 'Salvar novo usuário'

  expect(usuario.username).to eq('thatarocket') 
  expect(usuario.email).to eq('thaisTeste@gmail.com') 
  expect(usuario.senha).to eq('teste1234')
end