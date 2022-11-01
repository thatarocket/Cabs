Dado('que estou na página de edição de usuário') do
    visit '/usuarios/new'
    fill_in "Username", :with => 'a'
    fill_in "Email", :with => 'a@gmail.com'
    fill_in "Senha", :with => 'ab'
    click_on 'Salvar novo usuário'
    visit '/usuarios/1/edit'
  end
  