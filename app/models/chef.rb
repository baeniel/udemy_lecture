class Chef < ApplicationRecord
  has_many :recipes, dependent: :destroy

  # has_many :comments, dependent: :destroy

  has_many :comments, as: :commentable, dependent: :destroy


  validates :chefname, presence: true
  validates :email, presence: true, length: { minimum: 5, maximum: 100 }
end
