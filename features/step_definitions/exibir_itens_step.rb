Dado('não exista um item na categoria') do
    expect(ItemTroca.where(categoria: 'Acessórios')).to be_empty
end