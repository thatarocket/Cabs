Quando('clico em {string}') do |string|
    click_on string
end

Então('deverei ver meu item na aba de favoritos') do
    expect(page).to have_content("Você favoritou este item: Boné Preto")
end

Então('não deverei ver meu item na aba de favoritos') do
    expect(page).to_not have_content("Você favoritou este item: Boné Preto")
end