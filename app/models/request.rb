class Request < ApplicationRecord
  belongs_to :animal
  belongs_to :user
  has_one :chatroom
  validates :message, presence: true
  has_one_attached :passport
  enum status: [ :pending, :accepted, :declined ]
  after_create :create_chatroom_and_message

  private

  after_create :create_chatroom_and_message

  private

  def create_chatroom_and_message
    chatroom = Chatroom.create(request: self)
    message = Message.create(chatroom: chatroom, content: self.message, user: self.user)
  end
end
