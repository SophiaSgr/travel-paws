class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # has_one_attached
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :username, :email, presence: true, uniqueness: true
  # validates :first_name, :last_name, presence: true
  has_many :shelters
  has_many :animals, through: :requests

  def is_shelter_owner?
  if self.shelters.any?
    true
  else
    false
  end

end
