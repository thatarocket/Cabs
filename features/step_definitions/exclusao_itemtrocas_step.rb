Dado('que estou na página do item') do
    visit '/item_trocas/1'
  end

  Quando('clico em "Excluir este item"') do
    click_on "Excluir este item"
  end

  Então("deverei ver a mensagem {string}") do |string|
    expect(page).to have_content(string)
