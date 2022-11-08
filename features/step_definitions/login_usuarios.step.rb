Dado('que estou na página de login do usuário') do
    visit '/login/new'
end
  
Quando('clico em entrar') do
    click_on 'Realizar login'
end
  
Então('devo conseguir ter acesso ao sistema') do
    visit 'application/index'
    expect(page).to have_content('Bem vindo ao Cabs!')
end