require 'rails_helper'
require 'spec_helper'

RSpec.describe Usuario, type: :model do
  it 'invalido sem nome de usuario' do
    usuario = Usuario.new
    usuario.email = "thaisTeste@gmail.com"
    usuario.senha = "teste1234"
    expect(usuario).not_to be_valid
  end

  it 'invalido sem senha' do
    usuario = Usuario.new
    usuario.username = "thais-teste"
    usuario.email = "thaisTeste@gmail.com"
    expect(usuario).not_to be_valid
  end

  it 'invalido sem email' do
    a = Usuario.new
    a.username = "thais-teste"
    a.senha = "teste1234"
    expect(a).not_to be_valid
  end

  it 'Formato de e-mail inválido!' do
    a = Usuario.new
    a.username = "thais-teste"
    a.senha = "teste1234"
    a.email = "#,ç/?@@email"    
    expect(a).not_to be_valid
  end

  it 'Já existe uma conta com esse e-mail!' do
    a = Usuario.new
    a.username = "thais-teste"
    a.senha = "teste1234"
    a.email = "thais.souza.rodrigues@usp.br"    
    expect(a).not_to be_valid
  end

  it 'Nome de usuário já existe!' do
    a = Usuario.new
    a.username = "thatarocket"
    a.senha = "teste1234"
    a.email = "thaisTeste@gmail.com"
    expect(a).not_to be_valid
  end

  

end