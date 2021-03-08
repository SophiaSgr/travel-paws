class Request < ApplicationRecord
  belongs_to :animal
  belongs_to :user
  validates :message, presence: true
  enum status: [ :pending, :accept, :decline ]
end
