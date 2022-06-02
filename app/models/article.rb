class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :banner, presence: true
  belongs_to :author
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_one_attached :banner
  validates :banner, content_type: ['image/png', 'image/jpg', 'image/jpeg']
  has_rich_text :body

  #before_save :reduce_banner

  private

  def reduce_banner
    self.banner = banner.blob.variant(resize_to_limit: [nil, 500], quality: 70)
  end
end
