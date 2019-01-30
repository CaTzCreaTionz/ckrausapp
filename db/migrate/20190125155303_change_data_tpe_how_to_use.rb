class ChangeDataTpeHowToUse < ActiveRecord::Migration[5.2]
  def change
  	change_column :products, :how_to_use, :text
  end
end
