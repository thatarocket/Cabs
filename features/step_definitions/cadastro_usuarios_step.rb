Dado('que estou na página de cadastro de usuário') do
  visit '/usuarios/new'
end

Quando('preencho o campo {string} com {string}') do |string, string2|
  fill_in string, :with => string2  
end

Quando('clico em salvar') do
  click_on 'Salvar cadastro'
end

Então('ele deve ter sido salvo no banco de dados') do
  usuarios = Usuarios.order("username").last
  expect(usuarios.username).to eq('thatarocket')
  expect(usuarios.email).to eq('thais.souza.rodrigues@usp.br') 
  expect(usuarios.senha).to eq('pastel204')
end

Então('deverei ver o usuário na página de listagem de usuários') do
  expect(page).to have_content('thatarocket')
  expect(page).to have_content('thais.souza.rodrigues@usp.br')
  expect(page).to have_content('pastel204')
end

Quando('deixo o campo {string} vazio') do |string|
  fill_in string, :with => ""
end

Então('deverei ver a mensagem de erro {string}') do |string|
  expect(page).to have_content(string)
end

Quando('já existe uma conta com esse email') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('já existe uma conta com esse nome de usuário') do
  pending # Write code here that turns the phrase above into concrete actions
end
