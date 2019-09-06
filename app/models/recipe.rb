class Recipe < ApplicationRecord
  belongs_to :chef, optional: true

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 5, maximum: 300 }
end
