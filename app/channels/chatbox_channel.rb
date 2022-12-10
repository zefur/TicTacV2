class ChatboxChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_for Gameroom.find(params[:id])
    puts "connected to chat too"
    
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
