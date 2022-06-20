# frozen_string_literal: true

class CellComponent < ViewComponent::Base
    def initialize(attributes ={})
        @mark,
        @free = true
        @test = "test"
        @cell_id = attributes[:cell_id]
        @game_id = attributes[:game_id]
    end

    def click
        if @player == "player 1"
            @mark = 'x'
        elsif @player == "player 2" 
            @mark = 'o'
        end
    end


end
