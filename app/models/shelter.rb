class Shelter < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  has_many :animals
  validates :name, :address, :description, presence: true
end
