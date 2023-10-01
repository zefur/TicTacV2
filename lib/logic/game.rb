module UltimateTicTac
    class Game
        attr_accessor :noughts, :crosses, :game_state, :value, :moves, :board 

        def initialize(attr={})
            @noughts = attr[:noughts]
            @crosses = attr[:crosses]
            @game_state = GameState.new
            @mode = attr[:mode]
            @board =attr[:board]
            @value = true
            @moves = Moves.new
        end

        # current_player = @value? @noughts : @crosses
        def start
            @game_state.begin
        end

        def play
            @moves.check_move
        end
        def won?
            @game_state.check_unit
        end

        def finished?
            @game_state.game_won
        end


    end
end