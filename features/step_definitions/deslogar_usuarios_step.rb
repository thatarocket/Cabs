Dado('que estou na página principal') do
    visit '/application'
end
  
Dado('clico em deslogar') do
    click_on 'deslogar'
end
  
Então('deverei ver a página de login') do
    visit '/login'
end