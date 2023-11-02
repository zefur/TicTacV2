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
            @moves = Moves.new(@mode)
        end

        # current_player = @value? @noughts : @crosses
        def start
            @game_state.begin #yes
        end

        def play
            @moves.check_move #doing
        end
        def won?
            @game_state.check_unit #no need maybe
        end

        def finished?
            @game_state.game_won #need to do
        end


    end
end