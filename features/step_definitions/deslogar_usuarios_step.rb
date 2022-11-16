Dado('que estou na página principal') do
    visit '/application'
end
  
Dado('clico em deslogar') do
    click_on 'deslogar'
end
  
Então('deverei ver a página de login') do
    visit root_path
end

Dado('que ele está logado') do
    visit '/login/new'
    fill_in "Username", :with => @usuario.username
    fill_in "Password", :with =>  @usuario.password
    click_on 'Realizar login'
end