class ReflexComponent < ViewComponentReflex::Component
  def initialize(attributes = {})
    @mark,
    @free = true
    @test = 'test'
    @cell_id = attributes[:cell_id]
    @game_id = attributes[:game_id]
    @board = attributes[:board]
    @count = 0
    @value = @board.state[@game_id.to_s][@cell_id.to_s]
  end

  def test
    stream_to ChatChannel
    @count += 1
    puts "help"
    @board.move(@game_id, @cell_id)
    # puts ChatChannel(Gameroom.find(@game_id))
  end

  def collection_key
    "#{@game_id} #{@cell_id}"
  end
end
