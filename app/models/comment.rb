class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article
  validates :content, :user_id, :post_id, presence: true
  validates :content, length: {maximum: 200}
end
