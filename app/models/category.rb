class Category < ApplicationRecord
  validates :name, presence: true
  has_many :articles

  extend FriendlyId
  friendly_id :name, use: :slugged
end
