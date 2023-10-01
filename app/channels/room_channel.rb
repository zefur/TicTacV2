class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    puts params
    stream_from Gameroom.find(params[:id])
    puts 'james'
    puts 'connected'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
