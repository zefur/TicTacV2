# frozen_string_literal: true

class ChatboxComponent < ViewComponentReflex::Component
  include CableReady::Broadcaster
  def initialize(attr = {})
    @room = attr[:gameroom]
    @player = attr[:player]
  end

  def post
    stream_to('ChatChannel')

    puts 'hello'
    chat = Message.new
    chat.content = element.value
    chat.player_id = Player.last.id
    chat.gameroom_id = @room.id
    chat.save

    # puts controller

    # Message.create(content: element.value, player_id: Player.last.id, gameroom_id: @room.id )
    # cable_ready[ChatChannel].insert_adjacent_html(
    #        selector: '#chat-area',
    #        html: render(MessageComponent.new( message: chat, player: @player))
    #      )
    # refresh!
  end

  def check
    puts @room

    puts 'I win'
    prevent_refresh!
  end
end
