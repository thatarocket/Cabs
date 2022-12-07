class CreateTrocas < ActiveRecord::Migration[7.0]
  def change
    create_table :trocas do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :item_troca, null: false, foreign_key: true

      t.timestamps
    end
  end
end
