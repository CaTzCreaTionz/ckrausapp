class HowToUse < ActiveRecord::Migration[5.2]
  def change
  	add_column :products, :how_to_use, :string
  end
end
