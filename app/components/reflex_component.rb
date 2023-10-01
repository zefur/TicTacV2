class ReflexComponent < ViewComponentReflex::Component
  include CableReady::Broadcaster
  def initialize(attributes = {})
   @parent = attributes[:parent]
    @free = true
    @test = 'test'
    @cell_id = attributes[:cell_id]
    @game_id = attributes[:game_id]
    @board = attributes[:board]
    @count = 0
    @value = @board.state[@game_id-1 ][@cell_id - 1]
  end

  def test
    
    
    @count += 1
    puts "help"
    puts key
    @board.move(@game_id, @cell_id)
    @value= @board.state[@game_id -1][@cell_id- 1]
    cable_ready[RoomChannel].console_log(message:"hello").broadcast_to(Gameroom.find(@board.gameroom.id))
    cable_ready[RoomChannel].add_css_class(
      selector: `##{@cell_id}`,
      name: "ring-4"
    ).broadcast_to(Gameroom.find(@board.gameroom.id))
    refresh_all!
  end

  def collection_key
    "#{@game_id} #{@cell_id}"
  end
end
  