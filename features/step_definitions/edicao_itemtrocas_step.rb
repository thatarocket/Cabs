Dado('que estou na página do item') do
    visit '/item_trocas/1'
  end

  Quando('clico em "Editar este item"') do
    click_on "Editar este item"
  end

  Quando("mudo o campo {string} com {string}") do |string, string2|
    fill_in string, :with => string2  
  end

  Quando('clico em "Anunciar"') do
    click_on "Anunciar"
  end

  Então("ele deve ter sido salvo no banco de dados") do
    item = ItemTroca.order("id").last
    expect(item.nome).to eq('Boné preto') 
    expect(item.categoria).to eq('Acessório') 
    expect(item.condicao).to eq('Usado')
  end

  Então("deverei ver a mensagem {string}") do |string|
    expect(page).to have_content(string)
  end

  Quando("deixo o campo {string} vazio") do |string|
    fill_in string, :with => ""
  end

  Então("deverei ver a mensagem de erro {string}") do |string|
    expect(page).to have_content(string)
  end