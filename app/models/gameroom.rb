class Gameroom < ApplicationRecord
  belongs_to :player
  has_many :messages, dependent: :destroy
  has_one :board, dependent: :destroy
end
