class DropChefs < ActiveRecord::Migration[5.2]
  def change
    drop_table :chefs
  end
end
