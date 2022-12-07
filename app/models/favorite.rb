class Favorite < ApplicationRecord
  belongs_to :item_troca
  belongs_to :usuario
end
