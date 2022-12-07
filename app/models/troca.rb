class Troca < ApplicationRecord
  belongs_to :usuario
  belongs_to :item_troca
end
