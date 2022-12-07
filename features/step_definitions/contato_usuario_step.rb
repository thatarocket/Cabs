# Dado ('que estou logado') do
#     @usuario = FactoryBot.create(:usuario)
#     visit '/login/new'
#     fill_in "Username", :with => @usuario.username
#     fill_in "Password", :with =>  @usuario.password
#     click_on 'Realizar login'
# end


# Quando('tenho contato cadastrado') do

# end

# Então ('devo conseguir adicionar o meu contato') do
#     expect(page).to have_content('adicionar contato')
#     click_on 'adicionar contato'
# end

# E ('devo conseguir ver o contato adicionado no meu perfil') do
#     click_on 'Perfil'
#     expect(page).to have_content(@usuario.username)
#     expect(page).to have_content(@usuario.email)
#     expect(page).to have_content(@usuario.contato)
# end