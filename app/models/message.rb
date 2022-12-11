class Message < ApplicationRecord
  include CableReady::Broadcaster
  belongs_to :player
  belongs_to :gameroom

  # after_save :send

  # def send
  #   cable_ready[ChatChannel].console_log("test test")

  # end
end
