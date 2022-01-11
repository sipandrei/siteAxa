class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  belongs_to :author
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_one_attached :banner
  has_one_attached :article_content
end
