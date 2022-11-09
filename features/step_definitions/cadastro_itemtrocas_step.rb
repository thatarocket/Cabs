Dado('que estou na página de cadastro de item') do
  visit '/item_trocas/new'
end

Quando('clico em Anunciar') do
  click_on "Anunciar"
end

Então("o item deve ter sido salvo no banco de dados") do
  item = ItemTroca.order("id").last
  expect(item.nome).to eq('Boné preto') 
  expect(item.categoria).to eq('Acessórios') 
  expect(item.condicao).to eq('Usado')
end

Então("deverei ver a mensagem {string}") do |string|
  expect(page).to have_content(string)
end

Quando('seleciono o campo {string} com {string}') do |string, string2|
  select string2, :from => string
end

Quando('seleciono o campo {string} vazio') do |string|
  select "", :from => string
end