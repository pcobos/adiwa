class Ceremony < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  validates :name, :location, :description, presence: true
end

