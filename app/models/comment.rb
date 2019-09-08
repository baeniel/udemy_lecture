class Comment < ApplicationRecord
  # belongs_to :chef, optional: true
  # belongs_to :recipe, optional: true

  belongs_to :commentable, polymorphic: true
end
