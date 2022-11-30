class Troca < ApplicationRecord
  belongs_to :proposta_por
  belongs_to :proposta_para
  belongs_to :item_proposto
  belongs_to :item

  validates :proposta_por, presence: { message: "Verifique se você está logado" }
  validates :proposta_para, presence: { message: "Houve um erro no processamento do usuário dono do item que você está interessado" }
  validates :item_proposto, presence: { message: "Selecione um item para a troca" }
  validates :item, presence: { message: "Houve um erro no processamento do item que você está interessado" }
end
