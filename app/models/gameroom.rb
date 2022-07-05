class Gameroom < ApplicationRecord
  
  belongs_to :player
  has_many :messages



end
