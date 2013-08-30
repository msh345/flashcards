class Deck < ActiveRecord::Base
  belongs_to :round# Remember to create a migration!
end
