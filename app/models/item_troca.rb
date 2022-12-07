class ItemTroca < ApplicationRecord
    has_many_attached :images
    belongs_to :usuario

    validates :nome, presence: { message: "Informe o nome do item para poder anunciar!" }
    validates :categoria, presence: { message: "Informe a categoria do item para poder anunciar!" }
    validates :condicao, presence: { message: "Informe a condição do item para poder anunciar!" }
    validates :usuario, :presence => true
end
