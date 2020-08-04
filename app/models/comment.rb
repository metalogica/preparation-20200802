class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :content, uniqueness: true
end
