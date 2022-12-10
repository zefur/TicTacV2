class ReflexComponent < ViewComponentReflex::Component
   
    def initialize(attributes ={})
    @mark,
    @free = true
    @test = "test"
    @cell_id = attributes[:cell_id]
    @game_id = attributes[:game_id]
    @count = 0
    end

    def test
     stream_to ChatChannel
        @count +=  1 
        # puts ChatChannel(Gameroom.find(@game_id))
    end

    def collection_key
      "#{@game_id} #{@cell_id}"
    end

end
