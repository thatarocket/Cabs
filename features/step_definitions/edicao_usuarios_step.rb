Dado('que estou na página de edição de usuário') do
    visit '/usuarios/new'
    fill_in "Username", :with => 'a'
    fill_in "Email", :with => 'a@gmail.com'
    fill_in "Senha", :with => 'ab'
    click_on 'Salvar novo usuário'
    visit '/usuarios/1/edit'
  end
  
  Quando('substituo o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2  
  end
  
  Quando('clico em salvar novamente') do
    click_on 'Salvar novo usuário'
  end
  
  Então('ele deve ter sido salvo no banco de dados no mesmo id') do
    usuario = Usuario.order("id").last
    expect(usuario.username).to eq('thais-teste-novo') 
    expect(usuario.email).to eq('thaisTesteNovo@gmail.com') 
    expect(usuario.senha).to eq('teste1234novo')
  end
  
  Então('eu deverei ver o usuário na página seguinte') do
    expect(page).to have_content('thais-teste-novo')
    expect(page).to have_content('thaisTesteNovo@gmail.com')
  end
  
  Quando('eu deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
  end
  
  Então('eu deverei ver a mensagem de erro {string}') do |string|
    expect(page).to have_content(string)
  end