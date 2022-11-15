Dado('que estou na página de login do usuário') do
    visit '/login/new'
end
  
Dado('que existe um usuário') do
    FactoryBot.create(:usuario)
end

Quando('clico em entrar') do
    click_on 'Realizar login'
end
  
Então('devo conseguir ter acesso ao sistema') do
    visit '/application'
    expect(page).to have_content('Bem vindo ao Cabs!')
end

Então('deverei ver na página {string}') do |string|
    expect(page).to have_content(string)
end

