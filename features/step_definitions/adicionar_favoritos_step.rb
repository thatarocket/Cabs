Dado('que estou na página do item') do
  visit '/itens/1'
end

Quando('clico em {string}') do |string|
  click_on string
end

Então('o item deve ter sido salvo no banco de dados como Favoritos') do
  favorito = Favorito.order("id").last
  expect(favorito.username).to eq('thais-teste')
  expect(favorito.itemId).to eq('1')
end

Então('deverei vê-lo no meu perfil') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('o item não deve ter sido salvo no banco de dados como Favoritos') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('não deverei vê-lo no meu perfil') do
  pending # Write code here that turns the phrase above into concrete actions
end
