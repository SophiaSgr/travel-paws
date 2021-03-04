class Animal < ApplicationRecord
  has_many_attached :photos
  belongs_to :shelter
  has_many :requests
  validates :name, :animal_type, :weight, :size, :age, :medical_information, :description, presence: true
end
