require 'rails_helper'

RSpec.describe Item, type: :model do
    it 'valido com nome e estado' do
        item = Item.create(nome: "Objeto 1", estado: "Novo")
        expect(item).to be_valid
    end

    it 'inválido sem nome' do
        item = Item.create(estado: "Novo")
        expect(item).to_not be_valid
    end

    it 'inválido sem estado' do
        item = Item.create(nome: "Objeto 1")
        expect(item).to_not be_valid
    end
end
