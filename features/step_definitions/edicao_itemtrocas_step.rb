Dado('que estou na página do item') do
  visit '/item_trocas/new'
  fill_in "Nome", :with => 'Boné Preto'
  select 'Acessório', :from => "Categoria"
  select 'Usado', :from => "Condicao"
  click_on 'Anunciar'
end

Quando('clico em Editar este item') do
  click_on "Editar este item"
end

Então("o item deve ter sido alterado no banco de dados") do
  item = ItemTroca.order("id").last
  expect(item.nome).to eq('Boné branco') 
  expect(item.categoria).to eq('Acessórios') 
  expect(item.condicao).to eq('Novo')
end