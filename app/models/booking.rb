class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio
  validates :checkin, :checkout, presence: true
end
