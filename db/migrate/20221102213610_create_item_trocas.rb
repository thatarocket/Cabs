class CreateItemTrocas < ActiveRecord::Migration[7.0]
  def change
    create_table :item_trocas do |t|
      t.string :nome
      t.text :descricao
      t.string :condicao
      t.string :categoria

      t.timestamps
    end
  end
end
