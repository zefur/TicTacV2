# frozen_string_literal: true

class ChatboxComponent < ViewComponentReflex::Component
  include CableReady::Broadcaster
  
  def initialize(attr = {})
    @room = attr[:gameroom]
    @player = attr[:player]
  end

  def post
    

    puts 'hello'
    chat = Message.new
    chat.content = element.value
    chat.player_id = Player.last.id
    chat.gameroom_id = @room.id
    chat.save

    puts "1"
    # Message.create(content: element.value, player_id: Player.last.id, gameroom_id: @room.id )
    puts "2"
    cable_ready[ChatChannel].morph(
           selector: '#chatbox',
           children_only: false
          
    ).broadcast
         puts "3"
    # refresh!
  end

  def check
    puts @room

    puts 'I win'
    prevent_refresh!
  end
end
