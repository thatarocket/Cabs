Então('o item deve ser exibido') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('a categoria não deve ser exibida') do
    expect(page).to have_content('Não há itens cadastrados')
end