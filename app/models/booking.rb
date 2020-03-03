class Booking < ApplicationRecord
  belongs_to :session
  belongs_to :user

  validates :total_price, presence: true
end
