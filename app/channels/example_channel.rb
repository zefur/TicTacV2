class ExampleChannel < ApplicationCable::Channel
  def subscribed
    stream_from "example" 
  end

  def receive(data)
    puts data["message"]
    ActionCable.server.broadcast("example", "ActionCable is connected")
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
