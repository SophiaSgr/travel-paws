class Shelter < ApplicationRecord
  belongs_to :user
  has_many :animals
  validates :name, :address, :description, presence: true
end
