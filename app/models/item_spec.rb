require 'rails_helper'
require 'spec_helper'
RSpec.describe Item, type: :model do
  it 'invalido sem nome' do
    item = Item.new
    item.categoria = "Roupas"
    item.condicao = "Nova"
    expect(aluno).not_to be_valid
  end
  it 'invalido sem categoria' do
    item = Item.new
    item.nome = "Blusa azul"
    item.condicao = "Nova"
    item.categoria = ""
    expect(item).not_to be_valid
  end
  it 'invalido sem condição' do
    item = Item.new
    item.nome = "Blusa azul"
    item.categoria = "Roupas"
    item.condicao = ""
    expect(item).not_to be_valid
  end
end