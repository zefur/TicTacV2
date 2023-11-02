
module UltimateTicTac
    class Moves
        def initialize(attr={})
        @mode = UltimateTicTac::Original.new
        @current_moves
        @move_history = []
        end


        def place_mark
            current_player 

        end
        def next_area
            Original.new
        end
    end
end