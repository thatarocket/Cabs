require 'rails_helper'

RSpec.describe Login, type: :model do
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
end
