class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_for Gameroom.find(params[:id])
    puts "connected to chatroom #{params[:id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
