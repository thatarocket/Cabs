Dado('que estou na página de início') do
    visit '/application'
end
  
Dado('que exista um item cadastrado') do
    FactoryBot.create(:item_troca)
end
  
Quando('clico em pesquisar') do
    click_on 'buscar'
end
  
Então('deverei ver a página de resultados') do
    expect(page).to have_content('Resultados da pesquisa')
end

Então('deverei ver na página {string}') do |string|
    expect(page).to have_content(string)
end

Então('deverei ver o item na página de resultados') do
    expect(page).to have_content(Item.last.nome)
end