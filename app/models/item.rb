class Item < ApplicationRecord
    validates :nome, presence: { message: "É obrigatório informar o nome do item!" }
    validates :estado, presence: { message: "É obrigatório informar o estado do item!" }
end