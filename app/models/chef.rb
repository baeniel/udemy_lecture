class Chef < ApplicationRecord
  has_many :recipes, dependent: :destroy

  validates :chefname, presence: true
  validates :email, presence: true, length: { minimum: 5, maximum: 100 }
end
