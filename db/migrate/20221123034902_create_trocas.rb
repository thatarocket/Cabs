class CreateTrocas < ActiveRecord::Migration[7.0]
  def change
    create_table :trocas do |t|
      t.references :proposta_por, null: false, foreign_key: true
      t.references :proposta_para, null: false, foreign_key: true
      t.references :item_proposto, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
