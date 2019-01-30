class RenameDataTypeHowToUse < ActiveRecord::Migration[5.2]
  def up
  	change_column :products, :how_to_use, :string
  end

  def down
  	change_column :products, :how_to_use, :text
end
