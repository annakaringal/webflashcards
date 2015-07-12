class User < ActiveRecord::Base
  has_secure_password
  has_many :rounds
  has_many :decks, through: :rounds
  has_many :guesses, through: :rounds

  validates :user_name, presence: true, uniqueness: true
  validates :password, presence: true
end