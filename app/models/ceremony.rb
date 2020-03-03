class Ceremony < ApplicationRecord
  belongs_to :user

  validates :name, :location, :description, presence: true
end

