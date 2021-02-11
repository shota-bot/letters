class Shop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  has_many :letters, dependent: :destroy

  validates :prefecture_id, presence: true
end
