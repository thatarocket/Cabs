class Troca < ApplicationRecord
  belongs_to :proposta_por
  belongs_to :proposta_para
  belongs_to :item_proposto
  belongs_to :item
end
