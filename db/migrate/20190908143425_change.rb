class Change < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :chef_id
    remove_column :comments, :recipe_id
    add_column :comments, :commentable_type, :string
    add_column :comments, :commentable_id, :integer
  end
end
