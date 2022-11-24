Então('o item deverá ser exibido') do
    expect(page).to have_content(ItemTroca.last.nome)
  end
  
Dado('não exista um item na categoria') do
    expect(ItemTroca.where(categoria: 'Acessórios')).to be_empty
end