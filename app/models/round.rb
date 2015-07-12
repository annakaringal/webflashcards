class Round < ActiveRecord::Base
  has_many :guesses
  belongs_to :user
  belongs_to :deck

  validates :deck_id, presence: true
  validates :user_id, presence: true
end
