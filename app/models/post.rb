class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :title, presence: true, length: { in: 1..250 }
  validates :text, presence: true, length: { in: 1..500 }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true

  after_create :update_posts_counter
  after_destroy :decrement_posts_counter

  def update_posts_counter
    user.increment!(:posts_counter)
  end

  def decrement_posts_counter
    user.decrement!(:posts_counter)
  end

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end  