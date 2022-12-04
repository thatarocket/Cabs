Dado('que estou na página de edição de usuário') do
    visit '/usuarios/new'
    fill_in "Username", :with => 'thais-teste'
    fill_in "Email", :with => 'thaisTeste@gmail.com'
    fill_in "Password", :with => 'teste1234'
    click_on 'Salvar novo usuário'
    visit '/usuarios/1/edit'
  end
  