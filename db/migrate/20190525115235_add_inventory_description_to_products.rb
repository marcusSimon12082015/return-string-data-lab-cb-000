class AddInventoryDescriptionToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :inventory, :integrer
    add_column :products, :description, :string
  end
end
