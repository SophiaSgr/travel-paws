class Shelter < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
  has_many :animals
  belongs_to :user
  validates :name, :address, :description, presence: true
end
