require 'spec_helper'

RSpec.describe Usuario, type: :model do
  it 'invalido sem nome de usuario' do
    usuario = Usuario.new
    usuario.email = "thaisTeste@gmail.com"
    usuario.password = "teste1234"
    expect(usuario).not_to be_valid
  end

  it 'invalido sem senha' do
    usuario = Usuario.new
    usuario.username = "thais-teste"
    usuario.email = "thaisTeste@gmail.com"
    expect(usuario).not_to be_valid
  end

  it 'invalido sem email' do
    usuario = Usuario.new
    usuario.username = "thais-teste"
    usuario.password = "teste1234"
    expect(usuario).not_to be_valid
  end

  it 'Formato de e-mail inválido!' do
    usuario = Usuario.new
    usuario.username = "thais-teste"
    usuario.password = "teste1234"
    usuario.email = "#,ç/?@@email"    
    expect(usuario).not_to be_valid
  end
  

end
