class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  
  validates :text, presence: true, length: { in: 1..250 }

  after_create :update_comment_counter

  def update_comment_counter
    post.increment!(:comments_counter)    
  end
end