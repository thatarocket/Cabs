require 'rails_helper'
require 'spec_helper'
RSpec.describe ItemTroca, type: :model do
  it 'invalido sem nome' do
    item = ItemTroca.new
    item.categoria = "Roupas"
    item.condicao = "Nova"
    expect(itemtroca).not_to be_valid
  end
  it 'invalido sem categoria' do
    item = ItemTroca.new
    item.nome = "Blusa azul"
    item.condicao = "Nova"
    item.categoria = ""
    expect(itemtroca).not_to be_valid
  end
  it 'invalido sem condição' do
    item = ItemTroca.new
    item.nome = "Blusa azul"
    item.categoria = "Roupas"
    item.condicao = ""
    expect(itemtroca).not_to be_valid
  end
end