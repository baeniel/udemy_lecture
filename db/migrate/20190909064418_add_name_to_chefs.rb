class AddNameToChefs < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :name, :string
  end
end
