class Message < ApplicationRecord
  belongs_to :player
  belongs_to :gameroom
end
