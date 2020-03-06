class Ceremony < ApplicationRecord
  belongs_to :user
  has_many :sessions, dependent: :destroy

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo

  validates :name, :location, :description, presence: true
end

