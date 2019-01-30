class RenameDataTypeLongDescription < ActiveRecord::Migration[5.2]
  def change
  	change_column :products, :long_description, :text
  end
end
