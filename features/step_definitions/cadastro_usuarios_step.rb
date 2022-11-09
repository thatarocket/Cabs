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
  expect(usuario.password_digest).to eq('teste1234')
end

Quando('deixo o campo {string} vazio') do |string|
  fill_in string, :with => ""
end

Então('deverei ver a mensagem de erro {string}') do |string|
  expect(page).to have_content(string)
end
