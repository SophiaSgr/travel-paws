class Animal < ApplicationRecord
  belongs_to :shelter
  has_many :users, through: :requests
end
