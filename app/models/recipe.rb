class Recipe < ApplicationRecord
  validates :name, presence: true
  # validates :description, presence: true, length: { minimum: 5, maximum: 300 }
  belongs_to :chef, optional: true
  # has_many :comments, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  # validates :chef_id, presence: true

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
end
