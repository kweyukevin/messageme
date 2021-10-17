class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :email, presence: true, length: { minimum: 3, maximum: 15 }, uniqueness: { case_sensitive: false}
  has_many :messages
end
