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
        @count +=  1 
    end

    def collection_key
      "#{@game_id} #{@cell_id}"
    end

end
