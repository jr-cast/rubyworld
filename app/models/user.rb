class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable 
  has_many :posts
  has_many :comments
  has_many :likes

  validates :name, presence: true, length: { in: 3..25 }
  validates :photo, presence: true
  validates :posts_counter, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true

  def most_recent_posts
    posts.order(created_at: :desc).limit(3)
  end

  private 

  def after_confirmation
    WelcomeMailer.send_greeting_notification(self).deliver_now
  end
end