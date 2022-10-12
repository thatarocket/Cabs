Dado('que estou na página de cadastro de item') do
    visit '/itens/new'
  end
  
  Quando("preencho o campo {string} com {string}") do |string, string2|
    fill_in string, :with => string2  
  end

  Quando('clico em "Anunciar"') do
    click_on "Anunciar"
  end
  
  Então("ele deve ter sido salvo no banco de dados") do
    item = Item.order("id").last
    expect(item.nome).to eq('Boné preto') 
    expect(item.categoria).to eq('Acessório') 
    expect(item.condicao).to eq('Usado')
  end
  
  Então("deverei ver o item no meu perfil na listagem de itens anunciados") do
    expect(page).to have_content('Boné preto')
    expect(page).to have_content('Acessório')
    expect(page).to have_content('Usado')
  end

  Quando("deixo o campo {string} vazio") do |string|
    fill_in string, :with => ""
  end
  
  Então("deverei ver a mensagem de erro {string}") do |string|
    expect(page).to have_content(string)
  end
