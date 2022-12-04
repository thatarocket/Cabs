class AddContatoToUsuario < ActiveRecord::Migration[7.0]
  def change
    add_column :usuarios, :contato, :string
  end
end
