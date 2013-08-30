class User < ActiveRecord::Base
  has_many :rounds
  has_many :decks, :through => :rounds
  validates :email, uniqueness: true
end
