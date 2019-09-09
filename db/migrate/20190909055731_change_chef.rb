class ChangeChef < ActiveRecord::Migration[5.2]
  def change
    remove_column :chefs, :chefname
    remove_column :chefs, :email
  end
end
