class Letter < ApplicationRecord
  belongs_to :user
  belongs_to :shop

  validates :content, presence: true
end