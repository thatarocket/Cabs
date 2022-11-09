#language: pt

Dado ('que tenho itens cadastrados') do
    Item.create(nome: "Objeto 1", estado: "Novo")
    Item.create(nome: "Objeto 2", estado: "Usado")
end

Quando ('clico no botão de item') do
    visit '/application'
    click_on 'Item'
end

Então ('devo ver a tela com os itens') do
    expect(page).to have_content('Objeto 1')
    expect(page).to have_content('Novo')

    expect(page).to have_content('Objeto 2')
    expect(page).to have_content('Usado')
end


Dado ('que não tenho itens cadastrados') do
    Item.destroy_all
end


Quando ('clico em item') do
    visit '/application'
    click_on 'Item'
end

Então ('devo ver um erro de Não existem itens cadastrados.') do
    expect(page).to have_content('Não existem itens cadastrados.')
end