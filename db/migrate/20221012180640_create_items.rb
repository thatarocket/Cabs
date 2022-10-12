class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :nome
      t.string :categoria
      t.string :condicao

      t.timestamps
    end
  end
end
