class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  validates :name, presence: true, length: { in: 3..25 }
  validates :posts_counter, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
end