Dado ('que estou no sistema e quero adicionar contato') do
    @usuario = FactoryBot.create(:usuario)
    visit '/login/new'
    fill_in "Username", :with => @usuario.username
    fill_in "Password", :with =>  @usuario.password
    click_on 'Realizar login'
    visit "/usuarios/#{@usuario.id}"
end

Quando('clico em adicionar contato') do
    click_on 'adicionar contato'
end


Então ('devo ser redirecionado para formulario de contato') do
    expect(page).to have_content('Adicionar contato')
end

Quando 'preencho os dados de contato' do
    click_on 'adicionar contato'
    fill_in "Contato", :with => "123456"
    click_on "Save Post"
end
    
Então 'devo ser redirecionado para o perfil com o contato atualizado' do
    expect(page).to have_content('123456')
end
