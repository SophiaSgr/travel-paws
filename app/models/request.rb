class Request < ApplicationRecord
  belongs_to :animal
  belongs_to :user
  validates :message, presence: true
  has_one_attached :passport
  enum status: [ :pending, :accepted, :declined ]
end
