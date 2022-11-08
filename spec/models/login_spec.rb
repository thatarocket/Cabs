require 'spec_helper'

RSpec.describe Login, type: :model do
  it 'invalido sem nome de usuario' do
    usuario = Usuario.new
    usuario.password = "teste1234"
    expect(usuario).not_to be_valid
  end

  it 'invalido sem senha' do
    usuario = Usuario.new
    usuario.username = "thais-teste"
    expect(usuario).not_to be_valid
  end
  
end
