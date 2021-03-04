class Shelter < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos
  belongs_to :user
  has_many :animals
  validates :name, :address, :description, presence: true
end
