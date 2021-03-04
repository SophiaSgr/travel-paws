class Shelter < ApplicationRecord
  has_many_attached :photos
  has_many :animals
  belongs_to :user
  validates :name, :address, :description, presence: true
end
