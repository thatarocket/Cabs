Dado('que estou na página do item') do
  visit '/item_trocas/new'
  fill_in "Nome", :with => 'Boné Preto'
  fill_in "Categoria", :with => 'Acessório'
  fill_in "Condição", :with => 'Usado'
  click_on 'Anunciar'
  visit '/usuarios/1/edit'
end

Quando('clico em "Editar este item"') do
  click_on "Editar este item"
end

Quando("mudo o campo {string} com {string}") do |string, string2|
  fill_in string, :with => string2  
end