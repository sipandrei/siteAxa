class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  belongs_to :author
  has_many :comments, dependent: :destroy
end
