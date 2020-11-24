class Studio < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, uniqueness: true, length: { in: 3..30 }
  validates :address, presence: true
  validates :price, presence: true
  validates :description, presence: true, length: { maximum: 500 }
end
