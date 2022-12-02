Dado ("que estou logado") do
    @usuario = FactoryBot.create(:usuario)
    visit '/login/new'
    fill_in "Username", :with => @usuario.username
    fill_in "Password", :with =>  @usuario.password
    click_on 'Realizar login'
end

Quando("vou para a página de perfil") do
    click_on "Perfil"
end

Então ("devo ver as informações do usuário") do
    expect(page).to have_content(@usuario.username)
    expect(page).to have_content(@usuario.email)
end
