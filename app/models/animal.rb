class Animal < ApplicationRecord
  has_many_attached :photos
  belongs_to :shelter
  has_many :users, through: :requests
  validates :name, :animal_type, :weight, :size, :age, :medical_information, :description, presence: true
end
