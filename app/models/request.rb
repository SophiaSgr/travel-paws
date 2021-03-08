class Request < ApplicationRecord
  belongs_to :animal
  belongs_to :user
  has_one :chatroom
  validates :message, presence: true

  has_one_attached :passport
  enum status: [ :pending, :accepted, :declined ]
end
