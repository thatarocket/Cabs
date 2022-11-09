class ItemHome < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :nome
      t.string :estado

      t.timestamps
    end
  end
end
